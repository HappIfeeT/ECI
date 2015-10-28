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
	cqb1Targets = [];
	cqb1Objects = [];
	CqbSurprises = [];
	triggersCqb1 = [];
	stopCqb1 = [];
	HitTarget = 0;
	CibleID = 0;
	ID = 0;
	Elimine = 0;
	Blesse = 0;
	Civil = 0;
	NbCibles1 = 0;
	DureeExCQB = 0;
	DebutExCQB = 0;
	eleve_exo = [];
	public_exo = [];
	targets1 = [];
	NbCivil = 0;
	publicVariable "NbCivil";
	publicVariable "Elimine";
	publicVariable "Blesse";
	publicVariable "Civil";
	publicVariable "NbCibles1";
	publicVariable "DureeExCQB";
	publicVariable "DebutExCQB";
	publicVariable "CibleID";
	publicVariable "HitTarget";
	publicVariable "targets1";
	waitUntil {!isNil "Elimine"}; 
	waitUntil {!isNil "Blesse"}; 
	waitUntil {!isNil "Civil"}; 
	waitUntil {!isNil "DureeExCQB"}; 
	waitUntil {!isNil "DebutExCQB"};
	waitUntil {!isNil "CibleID"}; 
	waitUntil {!isNil "HitTarget"};
	waitUntil {!isNil "NbCibles1"};
	waitUntil {!isNil "targets1"};
	waitUntil {!isNil "NbCivil"};
	missionNamespace setVariable ["isCqb1Running", false, true];
	missionNamespace setVariable ["ExCivselected1", false, true];
};
if (X_Client) then {
/////////////////////////////startClientCqb1///////////////////////////////
HappI_fnc_startClientCqb1 = {
sleep random(0.5);sleep random(0.5);
		Elimine = 0;
		Blesse = 0;
		Civil = 0;
		NbCibles1 = 0;
		_targets = _this select 0;
		_level = _this select 1;
		_player = _this select 2;
		_targetsurprise = _this select 3;
		_NbPlayers = _this select 4;
		_publicExo = _this select 5;
		_siteName = getText (missionConfigFile >> "CqbStand" >> "CQB1" >> "name");
		_levelName = switch (_level) do {
		    case 0: { getText (missionConfigFile >> "CqbStand" >> "CQB1" >> "Level0" >> "name"); };
			case 1: { getText (missionConfigFile >> "CqbStand" >> "CQB1" >> "Level1" >> "name"); };
			case 2: { getText (missionConfigFile >> "CqbStand" >> "CQB1" >> "Level2" >> "name"); };
			case 3: { getText (missionConfigFile >> "CqbStand" >> "CQB1" >> "Level3" >> "name"); };
			case 4: { getText (missionConfigFile >> "CqbStand" >> "CQB1" >> "Level4" >> "name"); };
			case 5: { getText (missionConfigFile >> "CqbStand" >> "CQB1" >> "Level5" >> "name"); };
		    case default {};
		};
		missionNamespace setVariable ["ExCqb1Running", _levelName, true];
		_annonce = "Préparez vous ...";
		[_annonce] call ECI_fnc_announceLevelBegin;
			3 cutRsc ["HappIRscStatic","PLAIN",1];
		abortCqb1 = false;
		endCqb1 = false;
		switch (_level) do {
			case 0 :	 {};
			case 1 : 	 {
			{_x addEventHandler ["HitPart", {(_this select 0) execVM "standCqb\CQB1\hitPopUpTargetEvt.sqf"}];
			} forEach _targets;
			
			NbCibles1 = count _targets;
			publicVariable "NbCibles1";
			};
			case 2 : 	 {	
			_civilSelected = missionNamespace getVariable "ExCivselected1";
			_ID = (getPlayerUID player);
			if ((!_civilSelected) && (_ID in Instructeurs)) then {// attention ! a enlever pour le PBO          
			missionNamespace setVariable ["ExCivselected1", true, true];
			_ftargets = _targets;
			_CivilNb = floor random (7);
			NbCivil = _CivilNb;
			publicVariable "NbCivil";
				for "_i" from 0 to _CivilNb do {
					_rand = random (22);
					_idx = floor ( _rand); 
					_target = _ftargets select _idx;
					_target setObjectTextureGlobal [0, "data\pictures\textures\eci_target_civ.paa"];
				 	_target addEventHandler ["HitPart", {(_this select 0) execVM "standCqb\CQB1\hitPopUpCivEvt.sqf"}];
				 	_tmpArray = [_ftargets, _idx] call BIS_fnc_removeIndex;
					_ftargets = _tmpArray;
				};
				targets1 = _ftargets;
				publicVariable "targets1";
			};
			waitUntil {targets1};
						{
						_x addEventHandler ["HitPart", {(_this select 0) execVM "standCqb\CQB1\hitPopUpTargetEvt.sqf"}];
						} forEach targets1;
						NbCibles1 = count targets1;
						publicVariable "NbCibles1";
			};
			case 3 :	 {};
			case 4 : 	 {
			{_x addEventHandler ["HitPart", {(_this select 0) execVM "standCqb\CQB1\hitPopUpTargetEvt.sqf"}];
			} forEach _targets;
			{_x addEventHandler ["HitPart", {(_this select 0) execVM "standCqb\CQB1\hitPopUpTargetEvt.sqf"}];
			} forEach _targetsurprise;
				NbCibles1 = (count _targets) + (count _targetsurprise);
				publicVariable "NbCibles1";
				
  			};
			case 5 : 	  {	
			_civilSelected = missionNamespace getVariable "ExCivselected1";
			_ID = (getPlayerUID player);
			if (!_civilSelected && (_ID in Instructeurs)) then {// attention ! a enlever pour le PBO 
			missionNamespace setVariable ["ExCivselected1", true, true];
			_ftargets = _targets;
			_CivilNb = floor random (7);
			NbCivil = _CivilNb;
			publicVariable "NbCivil";
				for "_i" from 0 to _CivilNb do {
					_rand = random (22);
					_idx = floor ( _rand); 
					_target = _ftargets select _idx;
					_target setObjectTextureGlobal [0, "data\pictures\textures\eci_target_civ.paa"];
				 	_target addEventHandler ["HitPart", {(_this select 0) execVM "standCqb\CQB1\hitPopUpCivEvt.sqf"}];
				 	_tmpArray = [_ftargets, _idx] call BIS_fnc_removeIndex;
					_ftargets = _tmpArray;
				};
				targets1 = _ftargets;
				publicVariable "targets1";
			};
			waitUntil {targets1};
						{
						_x addEventHandler ["HitPart", {(_this select 0) execVM "standCqb\CQB1\hitPopUpTargetEvt.sqf"}];
						} forEach targets1;
 
						{
						_x addEventHandler ["HitPart", {(_this select 0) execVM "standCqb\CQB1\hitPopUpTargetEvt.sqf"}];
						} forEach _targetsurprise;
						NbCibles1 = (count targets1) + (count _targetsurprise);
						publicVariable "NbCibles1";
			};
			case default {player globalChat "undifined level";
						 };				
		};
_NbCibles1 = NbCibles1;
_NbCivils = NbCivil; 
 	
[_NbCibles1,_NbCivils] call ECI_RNG_MajCibles;
_ID = (getPlayerUID player);
if !(_ID in Instructeurs) then {
		switch (_level) do {
			case 0 : {};	
			case 1 : {
			 
				[] spawn {
					_i = 5;
					while {_i > 0} do
					{
					    hint format ["Départ dans %1s", _i];
						if (endCqb1) then { _i = _i - 100 ;};
						_i = _i - 1;
					    sleep 1;
					};
                    if (!endCqb1) then {
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
						if (endCqb1) then { _i = _i - 100 ;};
						_i = _i - 1;
					    sleep 1;
					};
                    if (!endCqb1) then {
					hint "Commencez !";
					sleep 1;
					hint "";
					} else {
					hint "";
					};
				};
			};
			case 3 : {};
			case 4 : {
			 
				[] spawn {
					_i = 5;
					while {_i > 0} do
					{
					    hint format ["Départ dans %1s", _i];
						if (endCqb1) then { _i = _i - 100 ;};
						_i = _i - 1;
					    sleep 1;
					};
                    if (!endCqb1) then {
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
						if (endCqb1) then { _i = _i - 100 ;};
						_i = _i - 1;
					    sleep 1;
					};
                    if (!endCqb1) then {
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
while {!endCqb1} do {
_ID = (getPlayerUID player);
if (_ID in Instructeurs) then {	// attention ! a enlever pour le PBO
_HeadShot =  format ["HeadShots : %1/%2", Elimine, NbCibles1 ];
_Elim =  format ["Elimines : %1/%2", Blesse, NbCibles1 ];
_Civ =  format ["Civil blesses : %1/%2", Civil, NbCivil ];
_breaker = "<br />";
_title  =   _HeadShot + _breaker  +  _Elim + _breaker  +  _Civ ;
hint parseText _title;
	};		
/**/		
sleep 1;
  };
		// End client
};
///////////////////startClientCqb1/////////pour/la/sonnerie/en/global////////////////////////////
HappI_fnc_startClientPublicCqb1 = {
		_level = _this select 0;
		switch (_level) do {
			case 0 : {};	
			case 1 : {
				[] spawn {
					_i = 5.4;
					while {_i > 0} do
					{
					    _i = _i - 0.1;
					    sleep 0.1;
					};
					if (!endCqb1) then {
					ecran2_cqb1 say3D "starter";
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
					if (!endCqb1) then {
					ecran2_cqb1 say3D "starter";
					} else {
					hint "";
					};
				};
			};
			case 3 : {};
			case 4 :{
				[] spawn {
					_i = 5.4;
					while {_i > 0} do
					{
					    _i = _i - 0.1;
					    sleep 0.1;
					};
					if (!endCqb1) then {
					ecran2_cqb1 say3D "starter";
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
					if (!endCqb1) then {
					ecran2_cqb1 say3D "starter";
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
HappI_fnc_clearHUDCqb1 = {
hint "";
	};
};

