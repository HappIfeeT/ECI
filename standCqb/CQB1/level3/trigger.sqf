////////////////////////////////////////////////////////
//                      GhOsT                         //
//                  2015 Arma 3                       //
//           	 Vetulus aka HappIfeeT                //
//                      GhOsT                         //
//            Ecole et Centre d'instruction           //
////////////////////////////////////////////////////////

_triggerIndex = _this select 0;
_lastTrigger = _this select 1;

switch true do
{
    case (_triggerIndex == _lastTrigger):
    {
    	//[[0],"SA_fnc_endServerCqb1",false,false] call BIS_fnc_MP;
    };

    default
    {
     	[[0],"Happi_fn_surprise",false, false] call BIS_fnc_MP;
     	nextTriggerCqb1 = nextTriggerCqb1 + 1;
    };
};,