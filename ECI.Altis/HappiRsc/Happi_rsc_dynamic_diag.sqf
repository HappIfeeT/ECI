////////////////////////////////////////////////////////
//                                                    //
//                  2015 Arma 3                       //
//           	 Vetulus aka HappIfeeT                //
//             - http://www.eusares.fr -              //
//            Ecole et Centre d'instruction           //
////////////////////////////////////////////////////////

if (isServer and isDedicated) exitWith {};

_structMess = _this select 0;

disableSerialization;
5 cutRsc ["HappiRscStatic","PLAIN",1];
_ui = uiNamespace getVariable "HappiRscStaticHUD";
_ctrl = _ui displayCtrl 1150;
_ctrl ctrlSetStructuredText parseText _structMess;

_decelFnct = {
	_arg = _this select 0;
	_posInitial = _this select 1;
	_posFinal = _this select 2;
	_duration = _this select 3;
	_coef = (_posInitial - _posFinal) / (_duration * _duration);
	_p = _coef * _arg * _arg + _posFinal;
	_p
};

_duration = 5;

_posXInitial = safezonex + safezonew - 0.4;
_posYInitial = safezoney + safezoneh - 0.48;
_posXFinal = safezonex + 0.3;
_posYFinal = safezoney + 0.5;

_tinit = time;
_tfinal = time + _duration;
_t = time - _tfinal;

_ctrl ctrlSetPosition [_posXInitial, _posYInitial];
_ctrl ctrlCommit 0;

while {_t < 0} do {
	_px_new = [_t, _posXInitial, _posXFinal, _duration] call _decelFnct;
	_py_new = [_t, _posYInitial, _posYFinal, _duration] call _decelFnct;
	_fade = - _t / _duration;
	_ctrl ctrlSetPosition [_px_new, _py_new];
	_ctrl ctrlSetFade _fade;
	_ctrl ctrlCommit 0;
	_t = time - _tfinal;
};

sleep 2 * _duration;

_fadeDuration = 15;
_tinit = time;
_tfinal = _tinit + _fadeDuration;
_t = _tinit;
while {_t < _tfinal} do {
	_fade = (_tfinal - _t) / (_fadeDuration);
	_ctrl ctrlSetFade (1 - _fade);
	_ctrl ctrlCommit 0;
	_t = time;
};

_ctrl ctrlSetFade 1;
_ctrl ctrlCommit 0;
