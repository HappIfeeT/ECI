////////////////////////////////////////////////////////
//                  2015 Arma 3                       //
//           	 Vetulus aka HappIfeeT                //
//                      GhOsT                         //
//            Ecole et Centre d'instruction           //
////////////////////////////////////////////////////////

_rangeType = _this select 0;
_isRunning = missionNamespace getVariable "isCqb1Running";

if (!_isRunning) then {

	Elimine = 0;
	Blesse = 0;
	Civil = 0;
	DureeExCQB = 0;
	DebutExCQB = 0;
	eleve_exo = [];
	public_exo_collect = [];
	public_exo = [];
	targets1 = [];
	Nb_eleve_exo = 1;
	publicVariable "Elimine";
	publicVariable "Blesse";
	publicVariable "Civil";
	publicVariable "DureeExCQB";
	publicVariable "DebutExCQB";
	publicVariable "eleve_exo";
	publicVariable "public_exo";
	publicVariable "public_exo_collect";
	publicVariable "targets1";
	eleve_exo = nearestObjects [ecran2_cqb1, ["Man"], 8.3];
	public_exo = nearestObjects [ecran1_cqb1, ["Man"], 150];
	publicVariable "eleve_exo";
	publicVariable "public_exo";
	waitUntil {!isNil "eleve_exo"};
	Nb_eleve_exo = count eleve_exo;
	publicVariable "Nb_eleve_exo";
	DebutExCQB = time + 6 ;
	publicVariable "DebutExCQB";
	[[_rangeType, eleve_exo, Nb_eleve_exo, public_exo],"HappI_fnc_startServerCqb1",false, false] call BIS_fnc_MP;
} else {
	hint "";
};

