////////////////////////////////////////////////////////
//                      GhOsT                         //
//                  2015 Arma 3                       //
//           	 Vetulus aka HappIfeeT                //
//                      GhOsT                         //
//            Ecole et Centre d'instruction           //
////////////////////////////////////////////////////////

// Common
HappI_fnc_changeTime = {
	_year = _this select 0;
	_month = _this select 1;
	_day = _this select 2;
	_hour = _this select 3;
	setDate [_year, _month, _day, _hour, 0];
};
