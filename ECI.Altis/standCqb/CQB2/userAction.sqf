////////////////////////////////////////////////////////
//                  2015 Arma 3                       //
//           	 Vetulus aka HappIfeeT                //
//             - http://www.eusares.fr -              //
//            Ecole et Centre d'instruction           //
////////////////////////////////////////////////////////

_rangeType = _this select 0;
_isRunning = missionNamespace getVariable "isCqb2Running";

if (!_isRunning) then {
missionNamespace setVariable ["ExCqb2Running", _rangeType, true];
	Elimine2 = 0;
	Blesse2 = 0;
	Civil2 = 0;
	DureeExCQB2 = 0;
	DebutExCQB2 = 0;
	eleve_exo2 = [];
 
	public_exo2 = [];
	targets2 = [];
	Nb_eleve_exo2 = 1;
	publicVariable "Elimine2";
	publicVariable "Blesse2";
	publicVariable "Civil2";
	publicVariable "DureeExCQB2";
	publicVariable "DebutExCQB2";
	publicVariable "eleve_exo2";
	publicVariable "public_exo2";
	publicVariable "targets2";
	eleve_exo2 = nearestObjects [ecran1_Cqb2, ["Man"], 7];
	public_exo2 = nearestObjects [ecran2_Cqb2, ["Man"], 150];
	publicVariable "eleve_exo2";
	publicVariable "public_exo2";
	waitUntil {!isNil "eleve_exo2"};
	waitUntil {!isNil "targets2"};
	Nb_eleve_exo2 = count eleve_exo2;
	publicVariable "Nb_eleve_exo2";
	DebutExCQB2 = time + 6 ;
	publicVariable "DebutExCQB2";
	[[_rangeType, eleve_exo2, Nb_eleve_exo2, public_exo2],"HappI_fnc_startServerCqb2",false, false] call BIS_fnc_MP;
} else {
	hint "";
};

