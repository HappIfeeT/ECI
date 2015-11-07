////////////////////////////////////////////////////////
//                  2015 Arma 3                       //
//           	 Vetulus aka HappIfeeT                //
//                      GhOsT                         //
//            Ecole et Centre d'instruction           //
////////////////////////////////////////////////////////
HappI_fnc_startServerCqb3 = {
	_level = _this select 0;
	_players = _this select 1;
	_NbPlayers = _this select 2;
	_publicExo = _this select 3;
	_isRunning = missionNamespace getVariable "isCqb3Running";
	if (!_isRunning) then {
		missionNamespace setVariable ["isCqb3Running", true, true];
		// INIT
		switch (_level) do {
			case 0 : {
				#include "level0\objects.sqf"
				#include "level0\targets.sqf"
				#include "level0\clientTriggers.sqf"
				};
			case 1 : {
				#include "level1\objects.sqf"
				#include "level1\targets.sqf"
				#include "level1\clientTriggers.sqf"
				};
			case 2 : {
				#include "level2\objects.sqf"
				#include "level2\targets.sqf"
				#include "level2\clientTriggers.sqf"
				};
			case 3 : {
				#include "level3\objects.sqf"
				#include "level3\targets.sqf"
				#include "level3\clientTriggers.sqf"
				};
			case 4 : {
				#include "level4\objects.sqf"
				#include "level4\targets.sqf"
				#include "level4\clientTriggers.sqf"
				};
			case 5 : {
				#include "level5\objects.sqf"
				#include "level5\targets.sqf"
				#include "level5\clientTriggers.sqf"
				};
			default {
				hint "erreur level";
			};
		};
		sleep 0.1;
		// Déclenchement exercice
		[[Cqb3Targets, _level, _players, _NbPlayers, _publicExo, Cqb3TargetsRandCivil],"HappI_fnc_startClientCqb3", _players, false] call BIS_fnc_MP;//pour les éléves en épreuve
		[[_level],"HappI_fnc_startClientPublicCqb3", _publicExo, false] call BIS_fnc_MP;//
	};	
};
HappI_fnc_endServerCqb3 = {
	[[],"HappI_fnc_clearHUDCqb3"] call BIS_fnc_MP;
	_level = _this select 0;
	endCqb3 = true;
	publicVariable "endCqb3";
	missionNamespace setVariable ["isCqb3Running", false, true];
	missionNamespace setVariable ["ExCqb3Running", " ", true];
	missionNamespace setVariable ["ExCivselected3", false, true];
/////NETTOYAGE
	{
		deleteVehicle _x;
	} forEach Cqb3Objects;
if ((count Cqb3Targets) > 0) then {	
	{
		deleteVehicle _x;
	} forEach Cqb3Targets;
};
if ((count Cqb3TargetsRandCivil) > 0) then {	
{
	deleteVehicle _x;
} forEach  Cqb3TargetsRandCivil;
};
	Cqb3TargetsRandCivil = [];
	Cqb3Targets = [];
	Cqb3Objects = [];
	Cqb3Targetsgroup0 = [];
	Cqb3Targetsgroup1 = [];
	Cqb3Targetsgroup2 = [];
	Cqb3Targetsgroup3 = [];
 	eleve_exo3 = [];
	public_exo3 = [];
	DureeExCqb3 = 0;
	DebutExCqb3 = 0;
	NbCibles3 = 0;
	targets3 = [];
	NbCivil3 = 0;
	publicVariable "eleve_exo3";
	publicVariable "public_exo3";
	publicVariable "DureeExCqb3";
	publicVariable "DebutExCqb3";
	publicVariable "NbCibles3";
	publicVariable "targets3";
	publicVariable "NbCivil3";
	ecran3_Cqb3  setobjecttextureglobal [0, "data\pictures\PC\PC_stand.paa"];
	ecran2_Cqb3  setobjecttextureglobal [0, "data\pictures\PC\PC_stand.paa"];	
	_dlg = findDisplay RNG_IDD;
	_ctrl = _dlg displayCtrl RNG_IDC_TitleLevel;
	_ctrl ctrlSetText "";
	_dlg = findDisplay RNG_IDD;
	_ctrl = _dlg displayCtrl RNG_IDC_EncoursCQB;
	_ctrl ctrlSetText "";
	[[],"ECI_RNG_ClearTitleEx"] call BIS_fnc_MP;	
if ((count stopCqb3) > 0) then {		
	deleteVehicle stopCqb3;
	stopCqb3 = [];
	publicVariable "stopCqb3";
};
};


Happi_fnc_CQB3_level0_group0 = {
	{ 
_x animate ["Terc", 0]; 
	} foreach Cqb3Targetsgroup0 ;
	deletevehicle triggerCqb3Group0; 
	triggerCqb3Group0 = [];
};

Happi_fnc_CQB3_level0_group1 = {
	{ 
_x animate ["Terc", 0]; 
	} foreach Cqb3Targetsgroup1 ;
	deletevehicle triggerCqb3Group1; 
	triggerCqb3Group1 = [];
};

Happi_fnc_CQB3_level0_group2 = {
	{ 
_x animate ["Terc", 0]; 
	} foreach Cqb3Targetsgroup2 ;
	deletevehicle triggerCqb3Group2; 
	triggerCqb3Group2 = [];
};
Happi_fnc_CQB3_level0_group3 = {
	{ 
_x animate ["Terc", 0]; 
	} foreach Cqb3Targetsgroup3 ;
	deletevehicle triggerCqb3Group3; 
	triggerCqb3Group3 = [];
};