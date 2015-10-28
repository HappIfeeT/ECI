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
	Cqb3Targets = [];
	Cqb3Targetsgroup0 = [];
	Cqb3Targetsgroup1 = [];
	Cqb3Targetsgroup2 = [];
	Cqb3Targetsgroup3 = [];
	Cqb3TargetsRandCivil = [];
	Cqb3Objects = [];
	triggersCqb3 = [];
	triggerCqb3Group0 = [];
	triggerCqb3Group1 = [];
	triggerCqb3Group2 = [];
	triggerCqb3Group3 = [];
	stopCqb3 = [];
	HitTarget3 = 0;
	CibleID3 = 0;
	ID3 = 0;
	Elimine3 = 0;
	Blesse3 = 0;
	Civil3 = 0;
	NbCibles3 = 0;
	DureeExCQB3 = 0;
	DebutExCQB3 = 0;
	eleve_exo3 = [];
	public_exo3 = [];
	targets3 = [];
	NbCivil3 = 0;
	publicVariable "NbCivil3";
	publicVariable "Elimine3";
	publicVariable "Blesse3";
	publicVariable "Civil3";
	publicVariable "NbCibles3";
	publicVariable "DureeExCQB3";
	publicVariable "DebutExCQB3";
	publicVariable "CibleID3";
	publicVariable "HitTarget3";
	publicVariable "stopCqb3";
	publicVariable "triggerCqb3Group0";
	publicVariable "triggerCqb3Group1";
	publicVariable "triggerCqb3Group2";
	publicVariable "triggerCqb3Group3";
	publicVariable "targets3";
	waitUntil {!isNil "Elimine3"}; 
	waitUntil {!isNil "Blesse3"}; 
	waitUntil {!isNil "Civil3"}; 
	waitUntil {!isNil "NbCibles3"};
	waitUntil {!isNil "DureeExCQB3"}; 
	waitUntil {!isNil "DebutExCQB3"};
	waitUntil {!isNil "CibleID3"}; 
	waitUntil {!isNil "HitTarget3"};
	waitUntil {!isNil "stopCqb3"}; 
	waitUntil {!isNil "triggerCqb3Group0"};
	waitUntil {!isNil "triggerCqb3Group1"}; 
	waitUntil {!isNil "triggerCqb3Group2"};
	waitUntil {!isNil "triggerCqb3Group3"};
	waitUntil {!isNil "targets3"};
	waitUntil {!isNil "NbCivil3"};
	missionNamespace setVariable ["isCqb3Running", false, true];
	missionNamespace setVariable ["ExCivselected3", false, true];
};
if (X_Client) then {
/////////////////////////////startClientCqb3///////////////////////////////
	HappI_fnc_startClientCqb3 = {
	sleep random(0.5);sleep random(0.5);
	 	_targets = _this select 0;
		_level = _this select 1;
		_player = _this select 2;
		_NbPlayers = _this select 3;
		_publicExo = _this select 4;
		_randCiv = _this select 5;
		_annonce = "Préparez vous ... " ;
		_levelName = switch (_level) do {
		    case 0: { getText (missionConfigFile >> "CqbStand" >> "CQB3" >> "Level0" >> "name"); };
			case 1: { getText (missionConfigFile >> "CqbStand" >> "CQB3" >> "Level1" >> "name"); };
			case 2: { getText (missionConfigFile >> "CqbStand" >> "CQB3" >> "Level2" >> "name"); };
			case 3: { getText (missionConfigFile >> "CqbStand" >> "CQB3" >> "Level3" >> "name"); };
			case 4: { getText (missionConfigFile >> "CqbStand" >> "CQB3" >> "Level4" >> "name"); };
			case 5: { getText (missionConfigFile >> "CqbStand" >> "CQB3" >> "Level5" >> "name"); };
		    case default {};
		};
		missionNamespace setVariable ["ExCqb3Running", _levelName, true];
		[ _annonce] call ECI_fnc_announceLevelBegin;
		3 cutRsc ["HappIRscStatic","PLAIN",1];		
		abortCqb3 = false;
		endCqb3 = false;
		switch (_level) do {
			case 0 : {
			{_x addEventHandler ["HitPart", {(_this select 0) execVM "standCqb\CQB3\hitPopUpTargetEvt.sqf"}];
			} forEach _targets;
			NbCibles3 = count _targets;
			publicVariable "NbCibles3";
			};
			case 1 : {
			{_x addEventHandler ["HitPart", {(_this select 0) execVM "standCqb\CQB3\hitPopUpTargetEvt.sqf"}];
			} forEach _targets;
	 
			sleep 0.1;
			_civilSelected = missionNamespace getVariable "ExCivselected3";
			_ID = (getPlayerUID player);
			if ((!_civilSelected) && (_ID in Instructeurs)) then {// attention ! a enlever pour le PBO
			missionNamespace setVariable ["ExCivselected2", true, true];
			_ftargets = _randCiv;
			_CivilNb =  floor random (7);
			NbCivil3 = _CivilNb;
			publicVariable "NbCivil3";
				for "_i" from 0 to _CivilNb do {
					_rand = random (20);
					_idx = floor ( _rand); 
					_target = _ftargets select _idx;
					_target setObjectTextureGlobal [0, "data\pictures\textures\eci_target_civ.paa"];
					_target addEventHandler ["HitPart", {(_this select 0) execVM "standCqb\CQB3\hitPopUpCivEvt.sqf"}];
					_tmpArray = [_ftargets, _idx] call BIS_fnc_removeIndex;
					_ftargets = _tmpArray;
				};
				targets3 = _ftargets;
				publicVariable "targets3";
				};
						{
						_x addEventHandler ["HitPart", {(_this select 0) execVM "standCqb\CQB3\hitPopUpTargetEvt.sqf"}];
						} forEach targets3;
			NbCibles3 = (count targets3) + (count _targets)  ;
			publicVariable "NbCibles3";
			};
			case 2 : {
			{
			_x addEventHandler ["HitPart", {(_this select 0) execVM "standCqb\CQB3\hitPopUpTargetEvt.sqf"}];
			} forEach _targets;
			NbCibles3 = count _targets;
			publicVariable "NbCibles3";
			};
			case 3 : {
			{_x addEventHandler ["HitPart", {(_this select 0) execVM "standCqb\CQB3\hitPopUpTargetEvt.sqf"}];
			} forEach _targets;
	 
			sleep 0.1;
			_civilSelected = missionNamespace getVariable "ExCivselected3";
			_ID = (getPlayerUID player);
			if ((!_civilSelected) && (_ID in Instructeurs)) then {// attention ! a enlever pour le PBO
			missionNamespace setVariable ["ExCivselected3", true, true];
			_ftargets = _randCiv;
			_CivilNb =  floor random (7);
			NbCivil3 = _CivilNb;
			publicVariable "NbCivil3";
				for "_i" from 0 to _CivilNb do {
					_rand = random (20);
					_idx = floor ( _rand); 
					_target = _ftargets select _idx;
					_target setObjectTextureGlobal [0, "data\pictures\textures\eci_target_civ.paa"];
					_target addEventHandler ["HitPart", {(_this select 0) execVM "standCqb\CQB3\hitPopUpCivEvt.sqf"}];
					_tmpArray = [_ftargets, _idx] call BIS_fnc_removeIndex;
					_ftargets = _tmpArray;
				};
				targets3 = _ftargets;
				publicVariable "targets3";
				};
						{
						_x addEventHandler ["HitPart", {(_this select 0) execVM "standCqb\CQB3\hitPopUpTargetEvt.sqf"}];
						} forEach targets3;
			NbCibles3 = (count targets3) + (count _targets)  ;
			publicVariable "NbCibles3";
			};
			case 4 : {
			{
			_x addEventHandler ["HitPart", {(_this select 0) execVM "standCqb\CQB3\hitPopUpTargetEvt.sqf"}];
			} forEach _targets;
			NbCibles3 = count _targets;
			publicVariable "NbCibles3";
			};
			case 5 : {
			{_x addEventHandler ["HitPart", {(_this select 0) execVM "standCqb\CQB3\hitPopUpTargetEvt.sqf"}];
			} forEach _targets;
	 
			sleep 0.1;
			_civilSelected = missionNamespace getVariable "ExCivselected3";
			_ID = (getPlayerUID player);
			if ((!_civilSelected) && (_ID in Instructeurs)) then {// attention ! a enlever pour le PBO
			missionNamespace setVariable ["ExCivselected3", true, true];
			_ftargets = _randCiv;
			_CivilNb =  floor random (19);
			NbCivil3 = _CivilNb;
			publicVariable "NbCivil3";
				for "_i" from 0 to _CivilNb do {
					_rand = random (80);
					_idx = floor ( _rand); 
					_target = _ftargets select _idx;
					_target setObjectTextureGlobal [0, "data\pictures\textures\eci_target_civ.paa"];
					_target addEventHandler ["HitPart", {(_this select 0) execVM "standCqb\CQB3\hitPopUpCivEvt.sqf"}];
					_tmpArray = [_ftargets, _idx] call BIS_fnc_removeIndex;
					_ftargets = _tmpArray;
				};
				targets3 = _ftargets;
				publicVariable "targets3";
				};
						{
						_x addEventHandler ["HitPart", {(_this select 0) execVM "standCqb\CQB3\hitPopUpTargetEvt.sqf"}];
						} forEach targets3;
			NbCibles3 = (count targets3) + (count _targets)  ;
			publicVariable "NbCibles3";
			};
			case default {
						hint "Exercice non défini";
						 };				
		};
_NbCibles3 = NbCibles3;	
_NbCivils3 = NbCivil3;	
[_NbCibles3,_NbCivils3] call ECI_RNG_MajCibles;
_ID = (getPlayerUID player);
if !(_ID in Instructeurs) then {	
		switch (_level) do {
			case 0 : {
				[] spawn {
					_i = 5;
					while {_i > 0} do
					{
					    hint format ["Départ dans %1s", _i];
						if (endCqb3) then { _i = _i - 100 ;};
						_i = _i - 1;
					    sleep 1;
					};
                    if (!endCqb3) then {
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
						if (endCqb3) then { _i = _i - 100 ;};
						_i = _i - 1;
					    sleep 1;
					};
                    if (!endCqb3) then {
					hint "Commencez !";
					sleep 1;
					hint "";
					} else {
					hint "";
					};
				};
			};
			case 2 : {
				[] spawn {
					_i = 5;
					while {_i > 0} do
					{
					    hint format ["Départ dans %1s", _i];
						if (endCqb3) then { _i = _i - 100 ;};
						_i = _i - 1;
					    sleep 1;
					};
                    if (!endCqb3) then {
					hint "Commencez !";
					sleep 1;
					hint "";
					} else {
					hint "";
					};
				};
			};
			case 3 : {
				[] spawn {
					_i = 5;
					while {_i > 0} do
					{
					    hint format ["Départ dans %1s", _i];
						if (endCqb3) then { _i = _i - 100 ;};
						_i = _i - 1;
					    sleep 1;
					};
                    if (!endCqb3) then {
					hint "Commencez !";
					sleep 1;
					hint "";
					} else {
					hint "";
					};
				};
			};
			case 4 : {
				[] spawn {
					_i = 5;
					while {_i > 0} do
					{
					    hint format ["Départ dans %1s", _i];
						if (endCqb3) then { _i = _i - 100 ;};
						_i = _i - 1;
					    sleep 1;
					};
                    if (!endCqb3) then {
					hint "Commencez !";
					sleep 1;
					hint "";
					} else {
					hint "";
					};
				};
			};
			case 5 : {
				[] spawn {
					_i = 5;
					while {_i > 0} do
					{
					    hint format ["Départ dans %1s", _i];
						if (endCqb3) then { _i = _i - 100 ;};
						_i = _i - 1;
					    sleep 1;
					};
                    if (!endCqb3) then {
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
while {!endCqb3} do { 
_ID = (getPlayerUID player);
if (_ID in Instructeurs) then {	// attention ! a enlever pour le PBO
	_HeadShot =  format ["HeadShots : %1/%2",Elimine3,NbCibles3 ];
	_Elim =  format ["Elimines : %1/%2",Blesse3,NbCibles3 ];
	_Civ =  format ["Civil blesses : %1/%2",Civil3,NbCivil3 ];
	_breaker = "<br />";
	_title  =   _HeadShot + _breaker  +  _Elim + _breaker  +  _Civ ;
	hint parseText _title;
	};		
	sleep 1;
  };
		// End client
};
///////////////////startClientPublicCqb3/////////pour/la/sonnerie/en/global////////////////////////////
HappI_fnc_startClientPublicCqb3 = {
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
					if (!endCqb3) then {
					Cqb3 say3D "starter";
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
					if (!endCqb3) then {
					Cqb3 say3D "starter";
					} else {
					hint "";
					};
				};
			};
			case 2 : {
				[] spawn {
					_i = 5.4;
					while {_i > 0} do
					{
					    _i = _i - 0.1;
					    sleep 0.1;
					};
					if (!endCqb3) then {
					Cqb3 say3D "starter";
					} else {
					hint "";
					};
				};
			};
			case 3 : {
				[] spawn {
					_i = 5.4;
					while {_i > 0} do
					{
					    _i = _i - 0.1;
					    sleep 0.1;
					};
					if (!endCqb3) then {
					Cqb3 say3D "starter";
					} else {
					hint "";
					};
				};
			};
			case 4 : {
				[] spawn {
					_i = 5.4;
					while {_i > 0} do
					{
					    _i = _i - 0.1;
					    sleep 0.1;
					};
					if (!endCqb3) then {
					Cqb3 say3D "starter";
					} else {
					hint "";
					};
				};
			};	
			case 5 : {
				[] spawn {
					_i = 5.4;
					while {_i > 0} do
					{
					    _i = _i - 0.1;
					    sleep 0.1;
					};
					if (!endCqb3) then {
					Cqb3 say3D "starter";
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
HappI_fnc_clearHUDCqb3 = {
hint "";
};
};

