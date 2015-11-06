// 2013 Arma 3 Lynx Script //

if (!isServer) exitWith {};

// arguments
_pos = _this select 0;
_radius = _this select 1;
_faction = _this select 2;
_nbUnits = _this select 3;
_unitTypes = _this select 4;
_unitSkills = _this select 5;
_buildingsTypes = _this select 6;
_flashLight = _this select 7;
_yellowRatio = _this select 8;

_nBuildings = nearestObjects [_pos, _buildingsTypes, _radius];
_ratio = _nbUnits / (count _nBuildings);

// definition liste de batiment et positions potentielles
_bList = [];
if (_ratio > 1) then {
	_bList = _nBuildings;
} else {
	_tmpB = _nBuildings;
	for "_i" from 1 to _nbUnits do {
		_idx = _tmpB call BIS_fnc_randomIndex;
		_bList set [count _bList, _tmpB select _idx];
		_tmpB2 = [_tmpB, _idx] call BIS_fnc_removeIndex;
		_tmpB = _tmpB2;
	};
};

_occupationList = [];
{
	_bPosPos = [];
	_i = 0;
	_bpos = _x buildingPos _i;
	while {(_bpos select 0) != 0} do {_bPosPos set [count _bPosPos, _i]; _i = _i + 1; _bpos = _x buildingPos _i;};
	_occupationList set [count _occupationList, [_x, _bPosPos]];
} forEach _bList;

// militirize
_modelCenter = [];
_unitsArray = [];
for "_i" from 1 to _nbUnits do {

	if (count _occupationList >= 1) then {
		// random de la position
		_bIdx = _occupationList call BIS_fnc_randomIndex;
		_building = _occupationList select _bIdx;
		_house = _building select 0;
		_tmpB = _building select 1;
		_bPosIdx = _tmpB call BIS_fnc_randomIndex;
		_bpos = _house buildingPos (_tmpB select _bPosIdx);

		// calcul du centre
		/*
		_bouding = boundingBox _house;
		_cx = (((_bouding select 0) select 0) + ((_bouding select 1) select 0)) / 2;
		_cy = (((_bouding select 0) select 1) + ((_bouding select 1) select 1)) / 2;
		_cz = (((_bouding select 0) select 2) + ((_bouding select 1) select 2)) / 2;
		_modelCenter = [_cx, _cy, _cz];
		*/
		_modelCenter = boundingCenter _house;
		_bcenter = _house modelToWorld _modelCenter;

		// mise en place unité
		_unitStr = _unitTypes call BIS_fnc_selectRandom;
		_grp = [_pos, _faction, [_unitStr], [],[],[0.3,0.5],[],[1, 0]] call BIS_fnc_spawnGroup;
		_unit = leader _grp;

		[_unit,_unitSkills] call ACA_fnc_setSkill;

		_unitsArray set [count _unitsArray, _unit];
		if (surfaceIsWater [_bpos select 0, _bpos select 1]) then {
			_unit setPosASL _bpos;
		} else {
			_unit setPos _bpos;
		};

		_unit setDir ([_bcenter, _bpos] call BIS_fnc_dirTo);

		_unit setBehaviour "AWARE";
		if (random(1) < _yellowRatio) then {
			_unit setCombatMode "YELLOW";
		} else {
			_unit setCombatMode "RED";
		};

		_unit setSpeedMode "LIMITED";
		_unit setUnitPos "UP";

		if (_flashLight) then {
			_unit unassignItem "NVGoggles";
			_unit removeItem "NVGoggles";
			_unit removePrimaryWeaponItem "acc_pointer_IR";
			_unit addPrimaryWeaponItem "acc_flashlight";
			_unit enableGunLights "forceon";
		};

		// memorisation du choix
		_tmpB2 = [_tmpB, _bPosIdx] call BIS_fnc_removeIndex;
		if (count _tmpB2 == 0) then {
			_occupationListTmp = [_occupationList, _bIdx] call BIS_fnc_removeIndex;
			_occupationList = _occupationListTmp;
		} else {
			_occupationList set [_bIdx, [_house,_tmpB2]];
		};

		sleep 0.2;
	};
};
_unitsArray