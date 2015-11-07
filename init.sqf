////////////////////////////////////////////////////////
//                  2015 Arma 3                       //
//           	 Vetulus aka HappIfeeT                //
//                      GhOsT                         //
//            Ecole et Centre d'instruction           //
////////////////////////////////////////////////////////
tf_no_auto_long_range_radio = true;
X_inIT = false;
X_Server = false;
X_Client = false;
X_JIP = false;
[] execVM "Scripts\statusBar.sqf";
ChairECI = [];

if (isServer) then {
////initialisations/des objets/mapping//////////////////
call compile preprocessFileLineNumbers "bases\initBases.sqf";
call compile preprocessFileLineNumbers "utils\initServerWeather.sqf";
////initialisations/des fonctions//////////////////

////intialisation des chaises///////////////////////////

/////Instructeurs///////////////////////////////////////
Instructeurs = ["xxxxxxxxxxxxxxxxxxx","xxxxxxxxxxxxxxxxxxx","xxxxxxxxxxxxxxxxxxx"];
publicVariable "Instructeurs";
waitUntil {!isNil "Instructeurs"};	
};
/////////////briefing////////////////////////////////////
if !(isServer && isDedicated) then {
 	[] execVM "briefing.sqf";
	
};
//Reconnaissance/des/localités///////////////////////////
if (isServer) then
{
    X_Server = true;
    if (!isDedicated) then
    {
        X_Client = true;
        X_SPE = true;
    };
    X_inIT = true;
} else {
    X_Client = true;
    if (isNull player) then
    {
        X_JIP = true;
        [] spawn {waitUntil {!(isNull player)};X_inIT = true};
    } else {
        X_inIT = true;
    };
};
////initialisation/temps
call compile preprocessFileLineNumbers "utils\fnc_setLocalWeather.sqf";
//initialisation des stands////////////////////////////////
call compile preprocessFileLineNumbers "standCqb\init.sqf";
//initialisation de la GUI/////////////////////////////////
call compile preprocessFileLineNumbers "Gui_Eusares\init.sqf";
//initJIP////Jour/Nuit/////////////////////////////////////
waitUntil {X_inIT};
// Espace commun
HappI_fnc_switchMove = {
    private["_object","_anim"];
    _object = _this select 0;
    _anim = _this select 1;
    _object switchMove _anim;
    
};
if (X_JIP) then {
    call compile preprocessFileLineNumbers "initJIP.sqf";
 
};
////initialisation du GodMod///////////////////////////////
if (X_inIT) then {
waitUntil {player};
player allowDamage false;
////Persistence du script///// ////////////////////////////
[] execVM "Scripts\GodMod.sqf";
 
};
 
ChairAdd = {
_object = _this select 0;
_object addAction ["<t color='#0099FF'>S'assoir</t>","Scripts\Chair\sitdown.sqf"]; 
 };	
{
[[_x], "ChairAdd"] call BIS_fnc_MP;
} forEach ChairECI;
//////cleaning/script/////////sec///////////////////////////
[
    1, //   dead bodies  
    2*60, //   dead vehicles   
      0, //    immobile vehicles 
    1, //  dropped weapons  
    1, //  planted explosives  
    30 //   dropped smokes/chemlights  
] execVM 'Scripts\repetitive_cleanup.sqf'; 
///////////////////////FIN/////////////////////////////////
