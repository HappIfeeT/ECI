////////////////////////////////////////////////////////
//                                                    //
//                  2015 Arma 3                       //
//           	 Vetulus aka HappIfeeT                //
//             - http://www.eusares.fr -              //
//            Ecole et Centre d'instruction           //
////////////////////////////////////////////////////////


if (isServer and isDedicated) exitWith {};


// get argument from addaction
// _structMess = (_this select 3) select 1;
// get argument from standard call
_structMess = _this select 0;

disableSerialization;
3 cutRsc ["HappiRscStatic","PLAIN",3];

_ui = uiNamespace getVariable "HappiRscStaticHUD";
_ctrl = _ui displayCtrl 1150;
_ctrl ctrlSetStructuredText parseText _structMess;

sleep 15;

_fnc_fade_ctrl = {

	private ["_ctrl", "_duration", "_isOut"];
	_ctrl = _this select 0;
	_duration = _this select 1;
	_isOut = _this select 2;

	_tInitial = time;
	_tFinal = _tInitial + _duration;
	_x = _tInitial;

	while {_x < _tFinal} do {
		_fade = (_tFinal - _x) / _duration ;
		if (_isOut) then {
			_ctrl ctrlSetFade (1 - _fade);
		} else {
			_ctrl ctrlSetFade _fade;
		};
		_ctrl ctrlCommit 0;
		_x = time;
	};

};

for "_i" from 0 to 10 do {
	[_ctrl, 0.5, true] call _fnc_fade_ctrl;
	[_ctrl, 0.5, false] call _fnc_fade_ctrl;
};

[_ctrl, 5, true] call _fnc_fade_ctrl;
_ctrl ctrlSetFade 1;
_ctrl ctrlCommit 0;