////////////////////////////////////////////////////////
//                                                    //
//                  2015 Arma 3                       //
//           	 Vetulus aka HappIfeeT                //
//             - http://www.eusares.fr -              //
//            Ecole et Centre d'instruction           //
////////////////////////////////////////////////////////

HappI_fnc_startServerCqb1 = {
	_level = _this select 0;
	_players = _this select 1;
	_NbPlayers = _this select 2;
	_publicExo = _this select 3;
	_isRunning = missionNamespace getVariable "isCqb1Running";
	if (!_isRunning) then {
		missionNamespace setVariable ["isCqb1Running", true, true];
		// INIT
		switch (_level) do {
			case 0 : {
				#include "level0\objects.sqf"
			};
			case 1 : {
				#include "level1\objects.sqf"
				#include "level1\targets.sqf"
				#include "level1\clientTriggers.sqf"
				};
			case 2 : {
				#include "level2\objects.sqf"
				#include "level2\targets.sqf"
				#include "level2\clientTriggers.sqf"5
			};
			case 3 : {
				#include "level3\objects.sqf"
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
				#include "level0\objects.sqf"
			};
		};
		sleep 0.1;
		// Déclenchement exercice
		 
	//_isRunning = missionNamespace getVariable "isCqb1Running";
	//if (!_isRunning) then {
		[[cqb1Targets, _level, _players, CqbSurprises, _NbPlayers, _publicExo],"HappI_fnc_startClientCqb1", _players, false] call BIS_fnc_MP;//pour les éléves en épreuve
		[[_level],"HappI_fnc_startClientPublicCqb1", _publicExo, false] call BIS_fnc_MP;//
		//		   };
	};	
};

HappI_fnc_endServerCqb1 = {
	[[],"HappI_fnc_clearHUDCqb1"] call BIS_fnc_MP;
	_level = _this select 0;
	endCqb1 = true;
	publicVariable "endCqb1";
	missionNamespace setVariable ["isCqb1Running", false, true];
	missionNamespace setVariable ["ExCqb1Running", " ", true];
	missionNamespace setVariable ["ExCivselected1", false, true];
		// CLEANING
	if ((count cqb1Objects) > 0) then {			
		{
			deleteVehicle _x;
		} forEach cqb1Objects;
		cqb1Objects = [];
	};	
	if ((count cqb1Targets) > 0) then {		
		{
			deleteVehicle _x;
		} forEach cqb1Targets;
		cqb1Targets = [];
	};	
	if ((count CqbSurprises) > 0) then {		
		{
			deleteVehicle _x;
		} forEach CqbSurprises;
		CqbSurprises = [];
	};	
 
	eleve_exo = [];
	public_exo = [];
	DureeExCQB = 0;
	DebutExCQB = 0;
	NbCibles1 = 0;
	targets1 = [];
	NbCivil = 0;
	publicVariable "eleve_exo";
	publicVariable "public_exo";
	publicVariable "DureeExCQB";
	publicVariable "DebutExCQB";
	publicVariable "NbCibles1";
	publicVariable "targets1";
	publicVariable "NbCivil";
	missionNamespace setVariable ["isCqb1Running", false, true];
	missionNamespace setVariable ["ExCivselected1", false, true];
	ecran1_cqb1  setobjecttextureglobal [0, "data\pictures\PC\PC_stand.paa"]; 
	ecran2_cqb1  setobjecttextureglobal [0, "data\pictures\PC\PC_stand.paa"];
	ecran3_cqb1  setobjecttextureglobal [0, "data\pictures\PC\PC_stand.paa"];
	_dlg = findDisplay RNG_IDD;
	_ctrl = _dlg displayCtrl RNG_IDC_EncoursCQB;
	_ctrl ctrlSetText "";
    //[] call ECI_RNG_ClearTitleEx;
	[[],"ECI_RNG_ClearTitleEx"] call BIS_fnc_MP;
	if ((count stopCqb1) > 0) then {	
	deletevehicle stopCqb1;
	stopCqb1 = [];
	publicVariable "stopCqb1";
	};		
};
 
Happi_fn_surprise = {
	{ _x animate ["Terc", 0]; sleep 0.5;
	} foreach CqbSurprises ;
};


