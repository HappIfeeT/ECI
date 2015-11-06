////////////////////////////////////////////////////////
//                      GhOsT                         //
//                  2015 Arma 3                       //
//           	 Vetulus aka HappIfeeT                //
//                      GhOsT                         //
//            Ecole et Centre d'instruction           //
////////////////////////////////////////////////////////


if (isServer and isDedicated) exitWith {};

_structMess = _this select 0;

_accelFunc = {
	private ["_argX", "_coef1", "_coef2", "_tmean", "_pmean", "_y"];
	_argX = _this select 0;
	_coef1 = _this select 1;
	_tmean = _this select 2;
	_pmean = _this select 3;
	_y = _coef1 * (_argX - _tmean) * (_argX - _tmean) + _pmean;
	_y
};

_accelFunc2 = {
	private ["_argX", "_coef1", "_b", "_y"];
	_argX = _this select 0;
	_coef1 = _this select 1;
	_b = _this select 2;
	_y = _coef1 * _argX * _argX + _b;
	_y
};

disableSerialization;
4 cutRsc ["HappiRscDynamic","PLAIN",1];
_ui = uiNamespace getVariable "HappiRscDynamicHUD";
_ctrl = _ui displayCtrl 1100;
_ctrl ctrlSetStructuredText parseText _structMess;

_ctrlPos = ctrlPosition _ctrl;
_pxInitial = _ctrlPos select 0;
_pxFinal = safezonex;
_tInitial = time;
_duration = 3;
_tFinal = _tInitial + _duration;
_tmean = (_tFinal - _tInitial) / 2;
_pxmean = 0.2;
_tmean2 = _tmean *_tmean;
_a1 = (_pxInitial - _pxmean) / _tmean2;
_tmean2 = (_tFinal - _tmean) * (_tFinal - _tmean);
_a2 = (_pxFinal - _pxmean) / _tmean2;

_x = time - _tInitial;
while { ((ctrlPosition _ctrl) select 0) > _pxmean + 0.001} do {
	_px = [_x, _a1, _tmean, _pxmean] call _accelFunc;
	_ctrl ctrlSetPosition [ _px, _ctrlPos select 1];
	_ctrl ctrlCommit 0;
	_x = time - _tInitial;
};

sleep 3;

_tInitial = time;
_x = time - _tInitial;
while { ((ctrlPosition _ctrl) select 0) > _pxFinal + 0.001} do {
	_px = [_x, (- _a1) * 0.5, _pxmean] call _accelFunc2;
	if (_px < _pxFinal) then {_px = _pxFinal};
	_ctrl ctrlSetPosition [ _px, _ctrlPos select 1];
	_ctrl ctrlCommit 0;
	_x = time - _tInitial;
};

sleep 3;

_duration = 5;
_ctrlPos = ctrlPosition _ctrl;
_pyInitial = _ctrlPos select 1;
_pyFinal = safezoney + safezoneh - 0.24;
_tInitial = time;
_tFinal = _tInitial + _duration;
_duration2 = (_tFinal - _tInitial) * (_tFinal - _tInitial);
_a = (_pyFinal - _pyInitial) / _duration2;

_x = time - _tInitial;
while {_x < _duration} do {
	_x = time - _tInitial;
	_py = [_x, _a, _pyInitial] call _accelFunc2;
	if (_py > _pyFinal) then {_py = _pyFinal};
	_ctrl ctrlSetPosition [ _ctrlPos select 0, _py];
	_fade = (1/ (_pyFinal - _pyInitial)) * (_pyFinal - _py);
	_ctrl ctrlSetFade (1 - _fade);
	_ctrl ctrlCommit 0;
	_x = time - _tInitial;
};

_ctrl ctrlSetFade 1;
_ctrl ctrlCommit 0;