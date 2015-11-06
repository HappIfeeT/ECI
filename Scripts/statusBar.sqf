waitUntil {!(isNull (findDisplay 46))};
disableSerialization;
 
_rscLayer = "statusBar" call BIS_fnc_rscLayer;
_rscLayer cutRsc["statusBar","PLAIN"];
systemChat format[" ", _rscLayer];    
 
[] spawn {
sleep 5;
_statusText = "Connexion ECI";
_counter = 180;
_timeSinceLastUpdate = 0;
while {true} do
{
sleep 1;
_counter = _counter - 1;
_statusText = "E.C.I.";   

_var = ((uiNamespace getVariable "statusBar")displayCtrl 33000)ctrlSetText format["%3 | FPS: %1 | Joueurs presents : %2 |", round diag_fps, count playableUnits, _statusText, _counter];
_var ctrlSetTextColor [1, 1, 0, 1]; 


};

};
//