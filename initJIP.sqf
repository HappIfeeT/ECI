////////////////////////////////////////////////////////
//                  2015 Arma 3                       //
//           	 Vetulus aka HappIfeeT                //
//                      GhOsT                         //
//            Ecole et Centre d'instruction           //
////////////////////////////////////////////////////////
_time = MissionnameSpace getVariable "ECI_JourNuit";
// synchronisation de l'heure(en cas de modification InGame). 
if (count _time > 0) then {
	_year = _weatherArray select 0;
	_month = _weatherArray select 1;
	_day = _weatherArray select 2;
	_hour = _weatherArray select 3;
	setDate [_year, _month, _day, _hour, 0];

};