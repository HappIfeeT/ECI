
 
missionNameSpace setVariable ["ECI_JourNuit",[],true]; 

HappI_fnc_broadcastJourNuit = {
	_year = _this select 0;
	_month = _this select 1;
	_day = _this select 2;
	_hour = _this select 3;
	missionNameSpace setVariable ["ECI_JourNuit",_this,true];
	[_this,"HappI_fnc_changeTime",true, false] spawn BIS_fnc_MP;
  _this spawn HappI_fnc_changeTime;


};