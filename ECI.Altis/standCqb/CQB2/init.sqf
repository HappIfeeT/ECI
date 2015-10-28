////////////////////////////////////////////////////////
//                  2015 Arma 3                       //
//           	 Vetulus aka HappIfeeT                //
//             - http://www.eusares.fr -              //
//            Ecole et Centre d'instruction           //
////////////////////////////////////////////////////////
if (X_Server) then {
	#include "initRange.sqf"
	#include "serverFunctions.sqf"
	//Variable Declaration
	Cqb2Targets = [];
	Cqb2Objects = [];
	triggersCqb2 = [];
	stopCqb2 = [];
	HitTarget2 = 0;
	CibleID2 = 0;
	ID2 = 0;
	Elimine2 = 0;
	Blesse2 = 0;
	Civil2 = 0;
	NbCibles2 = 0;
	DureeExCQB2 = 0;
	DebutExCQB2 = 0;
	eleve_exo2 = [];
	public_exo2 = [];
	targets2 = [];
	NbCivil2 = 0;
	publicVariable "NbCivil2";
	publicVariable "Elimine2";
	publicVariable "Blesse2";
	publicVariable "Civil2";
	publicVariable "NbCibles2";
	publicVariable "DureeExCQB2";
	publicVariable "DebutExCQB2";
	publicVariable "CibleID2";
	publicVariable "HitTarget2";
	publicVariable "targets2";
	waitUntil {!isNil "Elimine2"}; 
	waitUntil {!isNil "Blesse2"}; 
	waitUntil {!isNil "Civil2"}; 
	waitUntil {!isNil "DureeExCQB2"}; 
	waitUntil {!isNil "DebutExCQB2"};
	waitUntil {!isNil "CibleID2"}; 
	waitUntil {!isNil "HitTarget2"};
	waitUntil {!isNil "NbCibles2"};
	waitUntil {!isNil "targets2"};
	waitUntil {!isNil "NbCivil2"};
	missionNamespace setVariable ["isCqb2Running", false, true];
	missionNamespace setVariable ["ExCivselected2", false, true];
};
if (X_Client) then {
/////////////////////////////startClientCqb2///////////////////////////////
	HappI_fnc_startClientCqb2 = {
	sleep random(0.5);sleep random(0.5);
		_targets = _this select 0;
		_level = _this select 1;
		_player = _this select 2;
		_NbPlayers = _this select 3;
		_publicExo = _this select 4;
		_civils = _this select 5;
		_levelName = switch (_level) do {
		    case 0: { getText (missionConfigFile >> "CqbStand" >> "CQB2" >> "Level0" >> "name"); };
			case 1: { getText (missionConfigFile >> "CqbStand" >> "CQB2" >> "Level1" >> "name"); };
		    case default {};
		};
		missionNamespace setVariable ["ExCqb2Running", _levelName, true];
		_annonce = "Préparez vous ... " ;
		[_annonce] call ECI_fnc_announceLevelBegin;
		3 cutRsc ["HappIRscStatic","PLAIN",1];		
		abortCqb2 = false;
		endCqb2 = false;
		
		switch (_level) do {
			case 0 : {
			{_x addEventHandler ["HitPart", {(_this select 0) execVM "standCqb\CQB2\hitPopUpTargetEvt.sqf"}];
			} forEach _targets;
				NbCibles2 = count _targets;
				publicVariable "NbCibles2";
			};
			case 1 : {
			sleep 0.1;
			_civilSelected = missionNamespace getVariable "ExCivselected2";
			_ID = (getPlayerUID player);
			if ((!_civilSelected) && (_ID in Instructeurs)) then {// attention ! a enlever pour le PBO
			missionNamespace setVariable ["ExCivselected2", true, true];
			_ftargets = _targets;
			_CivilNb =  floor random (7);
			NbCivil2 = _CivilNb;
			publicVariable "NbCivil2";
				for "_i" from 0 to _CivilNb do {
					_rand = random (31);
					_idx = floor ( _rand); 
					_target = _ftargets select _idx;
					_target setObjectTextureGlobal [0, "data\pictures\textures\eci_target_civ.paa"];
					_target addEventHandler ["HitPart", {(_this select 0) execVM "standCqb\CQB2\hitPopUpCivEvt.sqf"}];
					_tmpArray = [_ftargets, _idx] call BIS_fnc_removeIndex;
					_ftargets = _tmpArray;
				};
				targets2 = _ftargets;
				publicVariable "targets2";
				};
						{
						_x addEventHandler ["HitPart", {(_this select 0) execVM "standCqb\CQB2\hitPopUpTargetEvt.sqf"}];
						} forEach targets2;
						NbCibles2 = count targets2;
						publicVariable "NbCibles2";
			};
			case default {
			hint "Erreur intialisation, pas de niveau défini";
						 };				
		};
_NbCibles2 = NbCibles2;	
_NbCivils2 = NbCivil2;		
[_NbCibles2, _NbCivils2] call ECI_RNG_MajCibles;
_ID = (getPlayerUID player);
if !(_ID in Instructeurs) then {
		switch (_level) do {
			case 0 : {
			 
				[] spawn {
					_i = 5;
					while {_i > 0} do
					{
					    hint format ["Départ dans %1s", _i];
						if (endCqb2) then { _i = _i - 100 ;};
						_i = _i - 1;
					    sleep 1;
					};
                    if (!endCqb2) then {
					hint "Commencez !";
					sleep 1;
					hint "";
					} else {
					hint "";
					};
				};
			};
			case 1 : {
			 
				[] spawn {
					_i = 5;
					while {_i > 0} do
					{
					    hint format ["Départ dans %1s", _i];
						if (endCqb2) then { _i = _i - 100 ;};
						_i = _i - 1;
					    sleep 1;
					};
                    if (!endCqb2) then {
					hint "Commencez !";
					sleep 1;
					hint "";
					} else {
					hint "";
					};
				};
			};
			case default {
				player globalChat "undifined level";
			};
		};
};		
		// Wait
while {!endCqb2} do {
_ID = (getPlayerUID player);
if (_ID in Instructeurs) then {	// attention ! a enlever pour le PBO
_HeadShot =  format ["HeadShots : %1/%2" , Elimine2 , NbCibles2 ];
_Elim =  format ["Elimines : %1/%2" , Blesse2 , NbCibles2 ];
_Civ =  format ["Civil blesses : %1/%2",Civil2, NbCivil2];
_breaker = "<br />";
_title  =   _HeadShot + _breaker  +  _Elim + _breaker  +  _Civ ;
hint parseText _title;
	};		
		
sleep 1;
 };
		// End client
/*		
switch (_level) do {
case 0 :	 {deleteVehicle stopCqb2;};
case 1 :	 {deleteVehicle stopCqb2;};
					};
*/	
};

///////////////////startClientPublicCqb2/////////pour/la/sonnerie/en/global////////////////////////////
	HappI_fnc_startClientPublicCqb2 = {
		_level = _this select 0;
switch (_level) do {
			case 0 : {
				[] spawn {
					_i = 5.4;
					while {_i > 0} do
					{
					    _i = _i - 0.1;
					    sleep 0.1;
					};
					if (!endCqb2) then {
					ecran1_Cqb2 say3D "starter";
					} else {
					hint "";
					};
				};
			};
			case 1 : {
				[] spawn {
					_i = 5.4;
					while {_i > 0} do
					{
					    _i = _i - 0.1;
					    sleep 0.1;
					};
					if (!endCqb2) then {
					ecran1_Cqb2 say3D "starter";
					} else {
					hint "";
					};
				};
			};
			case default {
				player globalChat "undifined level";
			};
		}	
	};
///////////////////////////////////////////////////////////////////////////////////////////
HappI_fnc_clearHUDCqb2 = {
hint "";
};

};

