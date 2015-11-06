////////////////////////////////////////////////////////
//                  2015 Arma 3                       //
//           	 Vetulus aka HappIfeeT                //
//                      GhOsT                         //
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
if (player == _shooter) then { 
	if ("target" in _selection) then {
		_target removeAllEventHandlers "HitPart";
		_target say3D "scream" ;
		Civil2 = Civil2 + 1; 
		publicVariable "Civil2";
		_structMess = parseText "<t color='#FC1401' size='1'>Civil blesse</t>";
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
	_target animate ["Terc", 1];
	};
};
true