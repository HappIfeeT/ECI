////////////////////////////////////////////////////////
//                  2015 Arma 3                       //
//           	 Vetulus aka HappIfeeT                //
//             - http://www.eusares.fr -              //
//            Ecole et Centre d'instruction           //
////////////////////////////////////////////////////////
// Hit Part EventHandler
_target = _this select 0;
_shooter = _this select 1;
_bullet = _this select 2;
_position = _this select 3;
_velocity = _this select 4;
_selection = _this select 5;
_ammo = _this select 6;
_direction = _this select 7;
_radius = _this select 8;
_surface = _this select 9;
_direct = _this select 10;
_shiftHead = 1.46;
if (player == _shooter) then { 
if ("target" in _selection) then {
	_posASLTarget = getPosASL _target;
	ID = _posASLTarget select 0;
	_posHead = [_posASLTarget select 0, _posASLTarget select 1, (_posASLTarget select 2) +  _shiftHead];
	_distance = _position distance _posHead;
	_distance = _distance - 0.165;
	if (_distance < 0) then {
		_distance = 0;
	};
	_score = 100 - (_distance * 240);
	if (_score < 0) then {
		_score = 0;
	};
	if (_score > 97) then {
		_target removeAllEventHandlers "HitPart";
		_target animate ["Terc", 1];
		_structMess = parseText "<t color='#01A904' size='1'>Neutralise</t>";
	[_structMess] spawn {
		_txt = _this select 0;
		disableSerialization;
		_ui = uiNamespace getVariable "HappIRscStaticHUD";
		_ctrl = _ui displayCtrl 1150;
		_ctrl ctrlSetStructuredText _txt;
		_ctrl ctrlSetFade 0;
		_ctrl ctrlCommit 0;
		sleep 1;
		_ctrl ctrlSetFade 1;
		_ctrl ctrlCommit 1;
	};
	Elimine = Elimine + 1 ;
	publicVariable "Elimine";
	} else {
	HitTarget = HitTarget + 0.5 ;
	publicVariable "HitTarget";
	if ((HitTarget > 0.6) && (CibleID == ID)) then { //
	_target removeAllEventHandlers "HitPart";
	_target animate ["Terc", 1];
	_structMess = parseText "<t color='#FCE612' size='1'>Neutralisé</t>";
	[_structMess] spawn {
		_txt = _this select 0;
		disableSerialization;
		_ui = uiNamespace getVariable "HappIRscStaticHUD";
		_ctrl = _ui displayCtrl 1150;
		_ctrl ctrlSetStructuredText _txt;
		_ctrl ctrlSetFade 0;
		_ctrl ctrlCommit 0;
		sleep 1;
		_ctrl ctrlSetFade 1;
		_ctrl ctrlCommit 1;
	};
	Blesse = Blesse +  1  ;
	publicVariable "Blesse";
	HitTarget = 0 ;
	CibleID  = 0 ;
	publicVariable "CibleID";
	publicVariable "HitTarget";
	} else {
	HitTarget = HitTarget + 0.5 ;
	CibleID = ID; 
	publicVariable "CibleID";
	publicVariable "HitTarget";
	_structMess = parseText "<t color='#F39900' size='1'>Blesse</t>";
	[_structMess] spawn {
		_txt = _this select 0;
		disableSerialization;
		_ui = uiNamespace getVariable "HappIRscStaticHUD";
		_ctrl = _ui displayCtrl 1150;
		_ctrl ctrlSetStructuredText _txt;
		_ctrl ctrlSetFade 0;
		_ctrl ctrlCommit 0;
		sleep 1;
		_ctrl ctrlSetFade 1;
		_ctrl ctrlCommit 1;
	};

		  };
		};
	
	
};
};
true