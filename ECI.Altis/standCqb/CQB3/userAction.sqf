////////////////////////////////////////////////////////
//                  2015 Arma 3                       //
//           	 Vetulus aka HappIfeeT                //
//             - http://www.eusares.fr -              //
//            Ecole et Centre d'instruction           //
////////////////////////////////////////////////////////
_rangeType = _this select 0;
_isRunning = missionNamespace getVariable "isCqb3Running";
if (!_isRunning) then {
missionNamespace setVariable ["ExCqb3Running", _rangeType, true];
	Elimine3 = 0;
	Blesse3 = 0;
	Civil3 = 0;
	DureeExCQB3 = 0;
	DebutExCQB3 = 0;
	eleve_exo3 = [];
	public_exo3 = [];
	Nb_eleve_exo3 = 0;
	targets3 = [];
	publicVariable "Elimine3";
	publicVariable "Blesse3";
	publicVariable "Civil3";
	publicVariable "DureeExCQB3";
	publicVariable "DebutExCQB3";
	publicVariable "eleve_exo3";
	publicVariable "public_exo3";
	publicVariable "targets3";
	eleve_exo3 = nearestObjects [Cqb3, ["Man"], 6];
	public_exo3 = nearestObjects [Cqb3, ["Man"], 150];
	publicVariable "eleve_exo3";
	publicVariable "public_exo3";
	waitUntil {!isNil "eleve_exo3"};
	Nb_eleve_exo3 = count eleve_exo3;
	publicVariable "Nb_eleve_exo3";
	DebutExCQB3 = time + 6 ;
	publicVariable "DebutExCQB3";
	[[_rangeType, eleve_exo3, Nb_eleve_exo3, public_exo3],"HappI_fnc_startServerCqb3",false, false] call BIS_fnc_MP;
} else {
	hint "";
};

