_a = _this select 0;
_b = [];
_c  = (count _a) -1;

{
	_b set [_c -_foreachIndex ,_x];
} forEach _a;

_b;