////////////////////////////////////////////////////////
//                                                    //
//                  2015 Arma 3                       //
//           	 Vetulus aka HappIfeeT                //
//             - http://www.eusares.fr -              //
//            Ecole et Centre d'instruction           //
////////////////////////////////////////////////////////

ECI_SPWN_AIR1_load = {
	_isLocked  = missionNameSpace getVariable ["isLockedAir1",false];
	//if (!_isLocked) then {
		(_this displayCtrl (SPWN_IDC_spawner + 1)) ctrlSetPosition [(LEFTDIV_X + (LEFTDIV_W * 0.1)),LEFTDIV_Y];
		(_this displayCtrl (SPWN_IDC_spawner + 1)) ctrlCommit 0.3;
		_spawner = "Spawner_AIR1";
		_categories = getArray (missionConfigFile >> _spawner >> "categories");
		_ctrl = _this displayCtrl (SPWN_IDC_combo + 1);
		{
			_cat = _x;
			_label = switch true do {
			    case (_cat == "Helicopter"): { "Hélicoptères"; };
			    case (_cat == "Plane"): { "Avions"; };
			    default { "Catégorie"; };
			};
			_i = _ctrl lbAdd _label;
			_ctrl	lbSetData [_i, _cat];
		} forEach _categories;
		[_this] spawn ECI_SPWN_AIR1_postLoad;
	//} else {
	//	hint "Verrouillé.";
	//	closeDialog 0;
	//};
};

ECI_SPWN_AIR2_load = {
	_isLocked  = missionNameSpace getVariable ["isLockedAir2",false];
	//if (!_isLocked) then {
		(_this displayCtrl (SPWN_IDC_spawner + 2)) ctrlSetPosition [(LEFTDIV_X + (LEFTDIV_W * 0.1)),LEFTDIV_Y];
		(_this displayCtrl (SPWN_IDC_spawner + 2)) ctrlCommit 0.3;
		_spawner = "Spawner_AIR2";
		_categories = getArray (missionConfigFile >> _spawner >> "categories");
		_ctrl = _this displayCtrl (SPWN_IDC_combo + 2);
		{
			_cat = _x;
			_label = switch true do {
			    case (_cat == "Helicopter"): { "Hélicoptères"; };
			    case (_cat == "Plane"): { "Avions"; };
			    default { "Catégorie"; };
			};
			_i = _ctrl lbAdd _label;
			_ctrl	lbSetData [_i, _cat];
		} forEach _categories;
		[_this] spawn ECI_SPWN_AIR2_postLoad;
	//} else {
	//	hint "Verrouillé.";
	//	closeDialog 0;
	//};
};

ECI_SPWN_TERRE1_load = {
	_isLocked  = missionNameSpace getVariable ["isLockedTerre1",false];
	//if (!_isLocked) then {
		(_this displayCtrl (SPWN_IDC_spawner + 3)) ctrlSetPosition [(LEFTDIV_X + (LEFTDIV_W * 0.1)),LEFTDIV_Y];
		(_this displayCtrl (SPWN_IDC_spawner + 3)) ctrlCommit 0.3;
		_spawner = "Spawner_TERRE1";
		_categories = getArray (missionConfigFile >> _spawner >> "categories");
		_ctrl = _this displayCtrl (SPWN_IDC_combo + 3);
		{
			_cat = _x;
			_label = switch true do {
			    case (_cat == "Car"): { "Véhicules légers"; };
			    case (_cat == "Tank"): { "Blindés lourds"; };
			    default { "Catégorie"; };
			};
			_i = _ctrl lbAdd _label;
			_ctrl	lbSetData [_i, _cat];
		} forEach _categories;
		[_this] spawn ECI_SPWN_TERRE1_postLoad;
	//} else {
	//	hint "Verrouillé.";
	//	closeDialog 0;
	//};
};

ECI_SPWN_TERRE2_load = {
	_isLocked  = missionNameSpace getVariable ["isLockedTerre2",false];
	//if (!_isLocked) then {
		(_this displayCtrl( SPWN_IDC_spawner + 4)) ctrlSetPosition [(LEFTDIV_X + (LEFTDIV_W * 0.1)),LEFTDIV_Y];
		(_this displayCtrl ( SPWN_IDC_spawner + 4)) ctrlCommit 0.3;
		_spawner = "Spawner_TERRE2";
		_categories = getArray (missionConfigFile >> _spawner >> "categories");
		_ctrl = _this displayCtrl (SPWN_IDC_combo + 4);
		{
			_cat = _x;
			_label = switch true do {
			    case (_cat == "Car"): { "Véhicules légers"; };
			    case (_cat == "Tank"): { "Blindés lourds"; };
			    default { "Catégorie"; };
			};
			_i = _ctrl lbAdd _label;
			_ctrl	lbSetData [_i, _cat];
		} forEach _categories;
		[_this] spawn ECI_SPWN_TERRE2_postLoad;
	//} else {
	//	hint "verrouillé.";
	//	closeDialog 0;
	//};
};

ECI_SPWN_AIR1_postLoad = {
	disableSerialization;
	lbSetCurSel [SPWN_IDC_combo + 1, 0];
};

ECI_SPWN_AIR2_postLoad = {
	disableSerialization;
	lbSetCurSel [SPWN_IDC_combo + 2, 0];
};

ECI_SPWN_TERRE1_postLoad = {
	disableSerialization;
	lbSetCurSel [SPWN_IDC_combo + 3, 0];
};

ECI_SPWN_TERRE2_postLoad = {
	disableSerialization;
	lbSetCurSel [SPWN_IDC_combo + 4, 0];
};

ECI_SPWN_setList1 = {
	_combo = _this select 0;
	_index = _this select 1;
	_cat  = _combo lbData _index; 
	_list = (findDisplay (SPWN_IDD + 1)) displayCtrl (SPWN_IDC_list + 1);
	_vehicleList = [_cat] call ECI_SPWN_getVehicleList;
	lnbClear _list;
	{
		_dn = _x select 0;
		_pic = _x select 1;
		_fa = _x select 2;
		_cn = _x select 3;
		_trimFa = [_fa,0,2] call BIS_fnc_trimString;
		_i = _list lnbAddRow ["",_fa,_dn];
		_list lnbSetPicture [[_i,0],_pic];
		_list lnbSetData [[_i,0], _cn];
		_list lnbSetColor [[_i,0],[0,0.07,0.01,1]];
		_list lnbSetColor [[_i,1],[0,0.07,0.01,1]];
		_list lnbSetColor [[_i,2],[0,0.07,0.01,1]];
	} forEach _vehicleList;
	_list lnbSetCurSelRow 0;
};

ECI_SPWN_setList2 = {
	_combo = _this select 0;
	_index = _this select 1;
	_cat  = _combo lbData _index;
	_list = (findDisplay (SPWN_IDD + 2)) displayCtrl (SPWN_IDC_list + 2 );
	_vehicleList = [_cat] call ECI_SPWN_getVehicleList;
	lnbClear _list;
	{
		_dn = _x select 0;
		_pic = _x select 1;
		_fa = _x select 2;
		_cn = _x select 3;
		_trimFa = [_fa,0,2] call BIS_fnc_trimString;
		_i = _list lnbAddRow ["",_fa,_dn];
		_list lnbSetPicture [[_i,0],_pic];
		_list lnbSetData [[_i,0], _cn];
		_list lnbSetColor [[_i,0],[0,0.07,0.01,1]];
		_list lnbSetColor [[_i,1],[0,0.07,0.01,1]];
		_list lnbSetColor [[_i,2],[0,0.07,0.01,1]];
	} forEach _vehicleList;
	_list lnbSetCurSelRow 0;
};

ECI_SPWN_setList3 = {
	_combo = _this select 0;
	_index = _this select 1;
	_cat  = _combo lbData _index;
	_list = (findDisplay (SPWN_IDD + 3)) displayCtrl (SPWN_IDC_list + 3);
	_vehicleList = [_cat] call ECI_SPWN_getVehicleList;
	lnbClear _list;
	{
		_dn = _x select 0;
		_pic = _x select 1;
		_fa = _x select 2;
		_cn = _x select 3;
		_trimFa = [_fa,0,2] call BIS_fnc_trimString;
		_i = _list lnbAddRow ["",_fa,_dn];
		_list lnbSetPicture [[_i,0],_pic];
		_list lnbSetData [[_i,0], _cn];
		_list lnbSetColor [[_i,0],[0,0.07,0.01,1]];
		_list lnbSetColor [[_i,1],[0,0.07,0.01,1]];
		_list lnbSetColor [[_i,2],[0,0.07,0.01,1]];
	} forEach _vehicleList;
	_list lnbSetCurSelRow 0;
};

ECI_SPWN_setList4 = {
	_combo = _this select 0;
	_index = _this select 1;
	_cat  = _combo lbData _index;
	_list = (findDisplay (SPWN_IDD + 4)) displayCtrl (SPWN_IDC_list + 4);
	_vehicleList = [_cat] call ECI_SPWN_getVehicleList;
	lnbClear _list;
	{
		_dn = _x select 0;
		_pic = _x select 1;
		_fa = _x select 2;
		_cn = _x select 3;
		_trimFa = [_fa,0,2] call BIS_fnc_trimString;
		_i = _list lnbAddRow ["",_fa,_dn];
		_list lnbSetPicture [[_i,0],_pic];
		_list lnbSetData [[_i,0], _cn];
		_list lnbSetColor [[_i,0],[0,0.07,0.01,1]];
		_list lnbSetColor [[_i,1],[0,0.07,0.01,1]];
		_list lnbSetColor [[_i,2],[0,0.07,0.01,1]];
	} forEach _vehicleList;

	_list lnbSetCurSelRow 0;
};

ECI_SPWN_getVehicleList = {
	_cat = _this select 0;
	_excludeList = [
		"O_Parachute_02_F",
		"B_Parachute_02_F",
		"I_Parachute_02_F",
		"NonSteerable_Parachute_F",
		"Steerable_Parachute_F",
		"PaperCar"
	];
	_objects = [];
	for "_i" from 0 to (count (configFile >> "CfgVehicles") - 1) do {
		_objCfg = (configFile >> "CfgVehicles") select _i;
		if (isClass(_objCfg)) then {
			if (getNumber (_objCfg >> "scope") > 0) then {
				_className = configName (_objCfg);
				if ((_className isKindOf _cat) and !(_className in _excludeList)) then {
					_displayName = getText (configFile >> "CfgVehicles" >> _className >> "displayName");
					_picture = getText (configFile >> "CfgVehicles" >> _className >> "picture");
					_side = getText (configFile >> "CfgVehicles" >> _className >> "faction");
					_obj = [_displayName, _picture, _side, _className];
					[ _objects, _obj] call BIS_fnc_arrayPush;
				};
			};
		};
	};
	_objects;
};

ECI_SPWN_create1 = {
	_spawner = "Spawner_AIR1";
	_spawnPos = getArray (missionConfigFile >> _spawner >> "position");
	_spawnDir = getNumber (missionConfigFile >> _spawner >> "dir");
	_a = SPWN_IDC_list + 1;
	_spawnClass = lnbData [ _a, [lnbCurSelRow _a, 0] ];
	_isUav = getNumber (configFile >> "CfgVehicles" >> _spawnClass >> "isUav");
	_obstacles = nearestObjects [_spawnPos,["Car","Tank","Helicopter","Plane"],7];
	if ((count _obstacles) == 0) then {
		_object = createVehicle [_spawnClass, _spawnPos, [], 0, "CAN_COLLIDE"];
		_object setDir _spawnDir;
		_object setPosATL _spawnPos;
		if (_isUav != 0) then { createVehicleCrew _object; };
		if (_object isKindOf "Air") then {
			if (!(_object isKindOf "JS_JC_FA18")) then {
				[_object] call TTT_fnc_syncTailhook;
			};
			[_object, ObjNull] call TTT_fnc_syncCatapult;
			[_object] call TTT_fnc_syncFuelAction;
			[_object] call TTT_fnc_syncIFLOLS;
		};
	};
	closeDialog 0;
};

ECI_SPWN_create2 = {
	_spawner = "Spawner_AIR2";
	_spawnPos = getArray (missionConfigFile >> _spawner >> "position");
	_spawnDir = getNumber (missionConfigFile >> _spawner >> "dir");
	_a = SPWN_IDC_list + 2;
	_spawnClass = lnbData [ _a, [lnbCurSelRow _a, 0] ];
	_isUav = getNumber (configFile >> "CfgVehicles" >> _spawnClass >> "isUav");
	_obstacles = nearestObjects [_spawnPos,["Car","Tank","Helicopter","Plane"],7];
	if ((count _obstacles) == 0) then {
		_object = createVehicle [_spawnClass, _spawnPos, [], 0, "CAN_COLLIDE"];
		_object setDir _spawnDir;
		_object setPosATL _spawnPos;
		if (_isUav != 0) then { createVehicleCrew _object; };
		if (_object isKindOf "Air") then {
			if (!(_object isKindOf "JS_JC_FA18")) then {
				[_object] call TTT_fnc_syncTailhook;
			};
			[_object, ObjNull] call TTT_fnc_syncCatapult;
			[_object] call TTT_fnc_syncFuelAction;
			[_object] call TTT_fnc_syncIFLOLS;
		};
	};
	closeDialog 0;
};

ECI_SPWN_create3 = {
	_spawner = "Spawner_TERRE1";
	_spawnPos = getArray (missionConfigFile >> _spawner >> "position");
	_spawnDir = getNumber (missionConfigFile >> _spawner >> "dir");
	_a = SPWN_IDC_list + 3 ;
	_spawnClass = lnbData [ _a , [lnbCurSelRow _a, 0] ];
	_isUav = getNumber (configFile >> "CfgVehicles" >> _spawnClass >> "isUav");
	_obstacles = nearestObjects [_spawnPos,["Car","Tank","Helicopter","Plane"],7];
	if ((count _obstacles) == 0) then {
		_object = createVehicle [_spawnClass, _spawnPos, [], 0, "CAN_COLLIDE"];
		_object setDir _spawnDir;
		_object setPosATL _spawnPos;
		if (_isUav != 0) then { createVehicleCrew _object; };
		if (_object isKindOf "Air") then {
			if (!(_object isKindOf "JS_JC_FA18")) then {
				[_object] call TTT_fnc_syncTailhook;
			};
			[_object, ObjNull] call TTT_fnc_syncCatapult;
			[_object] call TTT_fnc_syncFuelAction;
			[_object] call TTT_fnc_syncIFLOLS;
		};
	};
	closeDialog 0;
};

ECI_SPWN_create4 = {
	_spawner = "Spawner_TERRE2";
	_spawnPos = getArray (missionConfigFile >> _spawner >> "position");
	_spawnDir = getNumber (missionConfigFile >> _spawner >> "dir");
	_a = SPWN_IDC_list + 4 ;
	_spawnClass = lnbData [ _a , [lnbCurSelRow _a, 0] ];
	_isUav = getNumber (configFile >> "CfgVehicles" >> _spawnClass >> "isUav");
	_obstacles = nearestObjects [_spawnPos,["Car","Tank","Helicopter","Plane"],7];
	if ((count _obstacles) == 0) then {
		_object = createVehicle [_spawnClass, _spawnPos, [], 0, "CAN_COLLIDE"];
		_object setDir _spawnDir;
		_object setPosATL _spawnPos;
		if (_isUav != 0) then { createVehicleCrew _object; };
		if (_object isKindOf "Air") then {
			if (!(_object isKindOf "JS_JC_FA18")) then {
				[_object] call TTT_fnc_syncTailhook;
			};
			[_object, ObjNull] call TTT_fnc_syncCatapult;
			[_object] call TTT_fnc_syncFuelAction;
			[_object] call TTT_fnc_syncIFLOLS;
		};
	};
	closeDialog 0;
};

ECI_SPWN_delete1 = {
	_spawner = "Spawner_AIR1";
	_pos = getArray (missionConfigFile >> _spawner >> "position");
	_objects = nearestObjects [_pos,["Car","Tank","Helicopter","Plane"],7];
	{
		deleteVehicle _x;
	} forEach _objects;
	closeDialog 0;
};

ECI_SPWN_delete2 = {
	_spawner = "Spawner_AIR2";
	_pos = getArray (missionConfigFile >> _spawner >> "position");
	_objects = nearestObjects [_pos,["Car","Tank","Helicopter","Plane"],7];
	{
		deleteVehicle _x;
	} forEach _objects;
	closeDialog 0;
};

ECI_SPWN_delete3 = {
	_spawner = "Spawner_TERRE1";
	_pos = getArray (missionConfigFile >> _spawner >> "position");
	_objects = nearestObjects [_pos,["Car","Tank","Helicopter","Plane"],7];
	{
		deleteVehicle _x;
	} forEach _objects;
	closeDialog 0;
};

ECI_SPWN_delete4 = {
	_spawner = "Spawner_TERRE2";
	_pos = getArray (missionConfigFile >> _spawner >> "position");
	_objects = nearestObjects [_pos,["Car","Tank","Helicopter","Plane"],7];
	{
		deleteVehicle _x;
	} forEach _objects;
	closeDialog 0;
};