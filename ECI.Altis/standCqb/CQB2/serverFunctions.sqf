////////////////////////////////////////////////////////
//                                                    //
//                  2015 Arma 3                       //
//           	 Vetulus aka HappIfeeT                //
//             - http://www.eusares.fr -              //
//            Ecole et Centre d'instruction           //
////////////////////////////////////////////////////////

HappI_fnc_startServerCqb2 = {
	_level = _this select 0;
	_players = _this select 1;
	_NbPlayers = _this select 2;
	_publicExo = _this select 3;
	_isRunning = missionNamespace getVariable "isCqb2Running";
	if (!_isRunning) then {
		missionNamespace setVariable ["isCqb2Running", true, true];
		// INIT
		switch (_level) do {
			case 0 : {
				//#include "level0\objects.sqf"
				#include "level0\targets.sqf"
				#include "level0\clientTriggers.sqf"
				};
			case 1 : {
				//#include "level1\objects.sqf"
				#include "level1\targets.sqf"
				#include "level1\clientTriggers.sqf"
			};
			default {
				hint "erreur level";
			};
		};
		sleep 0.1;
		// Déclenchement exercice
		 
	//_isRunning = missionNamespace getVariable "isCqb2Running";
	//if (!_isRunning) then {
		[[Cqb2Targets, _level, _players, _NbPlayers, _publicExo],"HappI_fnc_startClientCqb2", _players, false] call BIS_fnc_MP;//pour les éléves en épreuve
		[[_level],"HappI_fnc_startClientPublicCqb2", _publicExo, false] call BIS_fnc_MP;//
		//		   };
	};	
};

HappI_fnc_endServerCqb2 = {
	[[],"HappI_fnc_clearHUDCqb2"] call BIS_fnc_MP;
	_level = _this select 0;
	endCqb2 = true;
	publicVariable "endCqb2";
		// CLEANING

	
 
	{
		deleteVehicle _x;
	} forEach Cqb2Objects;
	Cqb2Objects = [];
 	


 
	{
		deleteVehicle _x;
	} forEach Cqb2Targets;
 
 

	missionNamespace setVariable ["isCqb2Running", false, true]; 
 	missionNamespace setVariable ["ExCqb2Running", " ", true]; 
	missionNamespace setVariable ["ExCivselected2", false, true];
 
	
	NbCibles2 = 0;
	eleve_exo2 = [];
	public_exo2 = [];
	DureeExCQB2 = 0;
	DebutExCQB2 = 0;
	targets2 = [];
	Cqb2Targets = [];
	NbCivil2 = 0;
	publicVariable "eleve_exo2";
	publicVariable "public_exo2";
	publicVariable "DureeExCQB2";
	publicVariable "DebutExCQB2";
	publicVariable "targets2";
	publicVariable "NbCivil2";
publicVariable "NbCibles2";
	ecran1_Cqb2  setobjecttextureglobal [0, "data\pictures\PC\PC_stand.paa"]; 
	ecran2_Cqb2  setobjecttextureglobal [0, "data\pictures\PC\PC_stand.paa"];
	ecran3_Cqb2  setobjecttextureglobal [0, "data\pictures\PC\PC_stand.paa"];
	_dlg = findDisplay RNG_IDD;
	_ctrl = _dlg displayCtrl RNG_IDC_EncoursCQB;
	_ctrl ctrlSetText "";
	[[],"ECI_RNG_ClearTitleEx"] call BIS_fnc_MP;

	
	deleteVehicle stopCqb2;
	stopCqb2 = [];
	publicVariable "stopCqb2";

	};


