////////////////////////////////////////////////////////
//                  2015 Arma 3                       //
//           	 Vetulus aka HappIfeeT                //
//             - http://www.eusares.fr -              //
//            Ecole et Centre d'instruction           //
////////////////////////////////////////////////////////
ECI_RNG_open = {
if  ((getPlayerUID player) in Instructeurs) then { // attention ! a enlever pour le PBO
	disableSerialization; 
	_module = _this select 0;
	_site = _this select 1;
	_exos = _this select 2;
	_standName = getText (missionConfigFile >> _module >> _site >> "title");
	_siteName = getText (missionConfigFile >> _module >> _site >> "name");
	_levels = getArray (missionConfigFile >> _module >> _site >> "levels");
	_types = getArray (missionConfigFile >> _module >> _site >> "exotypes" );
	_idstand = getNumber (missionConfigFile >> _module >> _site >> "idstand");
	_isRunning = switch (_idstand) do {
		case 0 : {missionNamespace getVariable "isCqb1Running";};
		case 1 : {missionNamespace getVariable "isCqb2Running";};
		case 2 : {missionNamespace getVariable "isCqb3Running";};
		case default {hint "_isRunning error";};
	};
    createDialog "DlgECIRange";
	_dlg = findDisplay RNG_IDD;
	_ctrl = _dlg displayCtrl RNG_IDC_BG_window;
	_ctrl = _dlg displayCtrl RNG_IDC_Stand;
	_ctrl ctrlSetText _standName;
    _ctrl = (findDisplay RNG_IDD) displayCtrl RNG_IDC_exit;
	_ctrl = _dlg displayCtrl RNG_IDC_levels;
	if (count _levels > 0) then {
		{
			_levelName = getText (missionConfigFile >> _module >> _site >> _x >> "name");
			_data = format ["%1#%2#%3",_module, _site,  _x];
			_idx = _ctrl lbAdd _levelName;
			_ctrl lbSetData [_idx, _data];
		} forEach _levels;
		lbSetCurSel [RNG_IDC_levels, 0];
	};
	_ctrl	= _dlg displayCtrl RNG_IDC_type;
	if (count _types > 0) then {
		{
			_typesName = getText (missionConfigFile >> _module >> _site >> _exos >> _x >> "name");
			_data = format ["%1#%2#%3#%4",_module, _site, _exos,  _x];
			_idx = _ctrl lbAdd _typesName;
			_ctrl lbSetData [_idx, _data];
		} forEach _types;
		lbSetCurSel [RNG_IDC_type, 0];
	};
	_Elimine = switch (_idstand) do {
		case 0 : {Elimine ;}; 
		case 1 : {Elimine2 ;}; 
		case 2 : {Elimine3 ;};  
		default {0;};
	};
	_Blesse = switch (_idstand) do {
		case 0 : {Blesse ;}; 
		case 1 : {Blesse2 ;}; 
		case 2 : {Blesse3 ;}; 
		default {0;};
	};
	_Civil = switch (_idstand) do {
		case 0 : {Civil ;}; 
		case 1 : {Civil2 ;}; 
		case 2 : {Civil3 ;}; 
		default {0;};
	};
	_DureeExCQB = switch (_idstand) do {
		case 0 : {DureeExCQB ;};
		case 1 : {DureeExCQB2 ;};
		case 2 : {DureeExCQB3 ;};
	};	
	_NbCibles = switch (_idstand) do {
		case 0 : {NbCibles1 ;};
		case 1 : {NbCibles2 ;};
		case 2 : {NbCibles3 ;};
		default {0;};
	};	
	_NbCivils = switch (_idstand) do {
		case 0 : {NbCivil ;};
		case 1 : {NbCivil2 ;};
		case 2 : {NbCivil3 ;};
		default {0;};
	};
	_dlg = findDisplay RNG_IDD;
	_ctrl = _dlg displayCtrl RNG_IDC_ElimCQB;
	_ctrl ctrlSetText format ["HeadShots : %1 /%2", _Elimine, _NbCibles]; 
	_ctrl = _dlg displayCtrl RNG_IDC_blesseCQB;
	_ctrl ctrlSetText format ["Neutralisés : %1 /%2", _Blesse, _NbCibles];// /(count eleve_exo)
	_ctrl = _dlg displayCtrl RNG_IDC_civilCQB;
	_ctrl ctrlSetText format ["Civils blessés : %1 /%2", _Civil, _NbCivils];// /(count eleve_exo)
	_ctrl = _dlg displayCtrl RNG_IDC_DureeexoCQB;
	_ctrl ctrlSetText format ["Temps : %1 sec", _DureeExCQB];
	_ctrl = _dlg displayCtrl RNG_IDC_TitleLevel;
	_ctrl ctrlSetText _levelName;
if (!_isRunning) then {
	_ctrl = _dlg displayCtrl RNG_IDC_EncoursCQB;
	_ctrl ctrlSetText " "; } else {
	_levelName = switch (_idstand) do {
		case 0 : { 
		missionNamespace getVariable "ExCqb1Running";
		};
		case 1 : { 
		missionNamespace getVariable "ExCqb2Running";
		};
		case 2 : { 
		missionNamespace getVariable "ExCqb3Running";
		};
		default {"error level name"};
		};
	_ctrl = _dlg displayCtrl RNG_IDC_TitleLevel;
	_ctrl ctrlSetText _levelName;
	_ctrl = _dlg displayCtrl RNG_IDC_EncoursCQB;
	_ctrl ctrlSetText "EXERCICE EN COURS";
	};
	} else {
		hint "L'Eusares System est verrouillé. Seuls les instructeurs sont habilités à l'utiliser";
		closeDialog 0;
		sleep 5;
		hint "";
	};
};		
ECI_RNG_selectType = { 
	_lbdata = lbData [RNG_IDC_type, lbCurSel RNG_IDC_type];
	_data = [_lbdata,"#"] call BIS_fnc_splitString;
	_module = _data select 0;
	_site = _data select 1;
	_exos = _data select 2;
	_types = _data select 3;
	_levelName = getText (missionConfigFile >> _module >> _site >> _exos >> _types >> "name");
	_IDCimage = getNumber (missionConfigFile >> _module >> _site >> _exos >> _types >> "image");
	_idstand = getNumber (missionConfigFile >> _module >> _site >> "idstand");

switch (_idstand) do {
	case 0 : {
		switch (_IDCimage) do {
			case 0 : {	
	_ctrl =  (findDisplay RNG_IDD) displayCtrl RNG_IDC_image_module;
	_ctrl ctrlSetText "data\modules\CQB\module1.jpg";
	ecran3_cqb1  setobjecttextureglobal [0, "data\modules\CQB\module1.paa"]; 
					 };
			case 1 : {
	_ctrl =  (findDisplay RNG_IDD) displayCtrl RNG_IDC_image_module;
	_ctrl ctrlSetText "data\modules\CQB\module2.jpg";
	ecran3_cqb1  setobjecttextureglobal [0, "data\modules\CQB\module2.paa"];
					 };
		};
	};
	case 1 : {
		switch (_IDCimage) do {
			case 0 : {	
	_ctrl =  (findDisplay RNG_IDD) displayCtrl RNG_IDC_image_module;
	_ctrl ctrlSetText "data\modules\CQB\module3.jpg";
	ecran3_cqb2  setobjecttextureglobal [0, "data\modules\CQB\module3.paa"]; 
					 };
			case 1 : {
	_ctrl =  (findDisplay RNG_IDD) displayCtrl RNG_IDC_image_module;
	_ctrl ctrlSetText "data\modules\CQB\module4.jpg";
	ecran3_cqb2  setobjecttextureglobal [0, "data\modules\CQB\module4.paa"];
					 };
			case 2 : {
	_ctrl =  (findDisplay RNG_IDD) displayCtrl RNG_IDC_image_module;
	_ctrl ctrlSetText "data\modules\CQB\module5.jpg";
	ecran3_cqb2  setobjecttextureglobal [0, "data\modules\CQB\module5.paa"];
					 };
		};
	  };
	case 2 : {
		switch (_IDCimage) do {
			case 0 : {	
	_ctrl =  (findDisplay RNG_IDD) displayCtrl RNG_IDC_image_module;
	_ctrl ctrlSetText "data\modules\CQB\module6.jpg";
	ecran3_cqb3  setobjecttextureglobal [0, "data\modules\CQB\module6.paa"]; 
					 };
			case 1 : {
	_ctrl =  (findDisplay RNG_IDD) displayCtrl RNG_IDC_image_module;
	_ctrl ctrlSetText "data\modules\CQB\module7.jpg";
	ecran3_cqb3  setobjecttextureglobal [0, "data\modules\CQB\module7.paa"];
					 };
			case 2 : {
	_ctrl =  (findDisplay RNG_IDD) displayCtrl RNG_IDC_image_module;
	_ctrl ctrlSetText "data\modules\CQB\module8.jpg";
	ecran3_cqb3  setobjecttextureglobal [0, "data\modules\CQB\module8.paa"];
					 };
		};
	  };
   };
};
ECI_RNG_selectLevel = {
	_lbdata = lbData [RNG_IDC_levels, lbCurSel RNG_IDC_levels];
	_data = [_lbdata,"#"] call BIS_fnc_splitString;
	_module = _data select 0;
	_site = _data select 1;
	_level = _data select 2;
	_levelName = getText (missionConfigFile >> _module >> _site >> _level >> "name");
	_siteClearScript = getText (missionConfigFile >> _module >> _site >> "clearScript");
	_levelClearArgs = getArray (missionConfigFile >> _module >> _site >> _level >> "clearArgs");
	_levelDesc = getText (missionConfigFile >> _module >> _site >> _level >> "description");
	_IDCimage = getNumber (missionConfigFile >> _module >> _site >> _level >> "image");
	_idstand = getNumber (missionConfigFile >> _module >> _site >> "idstand");
_text = format ["%1", localize _levelDesc];

	
	 _ctrl =  (findDisplay RNG_IDD) displayCtrl RNG_IDC_description;
	 _ctrl ctrlSetStructuredText parseText _text;
switch (_idstand) do {
	case 0 : {	
	switch (_IDCimage) do {
			case 0 : {	
			_ctrl =  (findDisplay RNG_IDD) displayCtrl RNG_IDC_image_standx6;
			_ctrl ctrlSetText "data\stands\Cqb1\vide6.jpg";
			ecran1_cqb1  setobjecttextureglobal [0, "data\pictures\PC\CQB\CQB1\vide6.paa"]; 
			ecran2_cqb1  setobjecttextureglobal [0, "data\pictures\PC\CQB\CQB1\vide6.paa"];
			};
			case 1: {
			_ctrl =  (findDisplay RNG_IDD) displayCtrl RNG_IDC_image_standx6;
			_ctrl ctrlSetText "data\stands\Cqb1\vide6_en.jpg";
			ecran1_cqb1  setobjecttextureglobal [0, "data\pictures\PC\CQB\CQB1\vide6_en.paa"]; 
			ecran2_cqb1  setobjecttextureglobal [0, "data\pictures\PC\CQB\CQB1\vide6_en.paa"];
			};
			case 2 : {
			_ctrl =  (findDisplay RNG_IDD) displayCtrl RNG_IDC_image_standx6;
			_ctrl ctrlSetText "data\stands\Cqb1\vide6_en_ot.jpg";
			ecran1_cqb1  setobjecttextureglobal [0, "data\pictures\PC\CQB\CQB1\vide6_en_ot.paa"]; 
			ecran2_cqb1  setobjecttextureglobal [0, "data\pictures\PC\CQB\CQB1\vide6_en_ot.paa"];
			};
			case 3 : {
			_ctrl =  (findDisplay RNG_IDD) displayCtrl RNG_IDC_image_standx6;
			_ctrl ctrlSetText "data\stands\Cqb1\banque.jpg";
			ecran1_cqb1  setobjecttextureglobal [0, "data\pictures\PC\CQB\CQB1\banque.paa"]; 
			ecran2_cqb1  setobjecttextureglobal [0, "data\pictures\PC\CQB\CQB1\banque.paa"];
			};			
			case 4 : {
			_ctrl =  (findDisplay RNG_IDD) displayCtrl RNG_IDC_image_standx6;
			_ctrl ctrlSetText "data\stands\Cqb1\banque_en.jpg";
			ecran1_cqb1  setobjecttextureglobal [0, "data\pictures\PC\CQB\CQB1\banque_en.paa"]; 
			ecran2_cqb1  setobjecttextureglobal [0, "data\pictures\PC\CQB\CQB1\banque_en.paa"];
			};			
			case 5 : {
			_ctrl =  (findDisplay RNG_IDD) displayCtrl RNG_IDC_image_standx6;
			_ctrl ctrlSetText "data\stands\Cqb1\banque_en_ot.jpg";
			ecran1_cqb1  setobjecttextureglobal [0, "data\pictures\PC\CQB\CQB1\banque_en_ot.paa"]; 
			ecran2_cqb1  setobjecttextureglobal [0, "data\pictures\PC\CQB\CQB1\banque_en_ot.paa"];
			};
		};
	};
	case 1 : {	
	switch (_IDCimage) do {
			case 0 : {
			_ctrl =  (findDisplay RNG_IDD) displayCtrl RNG_IDC_image_standx6;
			_ctrl ctrlSetText "data\stands\Cqb2\toctoc_en.jpg";
			ecran1_cqb2  setobjecttextureglobal [0, "data\pictures\PC\CQB\CQB2\toctoc_en.paa"]; 
			ecran2_cqb2  setobjecttextureglobal [0, "data\pictures\PC\CQB\CQB2\toctoc_en.paa"];
			};
			case 1 : {
			_ctrl =  (findDisplay RNG_IDD) displayCtrl RNG_IDC_image_standx6;
			_ctrl ctrlSetText "data\stands\Cqb2\toctoc_en_ot.jpg";
			ecran1_cqb2  setobjecttextureglobal [0, "data\pictures\PC\CQB\CQB2\toctoc_en_ot.paa"]; 
			ecran2_cqb2  setobjecttextureglobal [0, "data\pictures\PC\CQB\CQB2\toctoc_en_ot.paa"];
			};
		};
	};
	case 2 : {	
	switch (_IDCimage) do {
			case 0 : {
			_ctrl =  (findDisplay RNG_IDD) displayCtrl RNG_IDC_image_standx6;
			_ctrl ctrlSetText "data\stands\Cqb3\UrbDroite_en.jpg";
			ecran1_cqb3  setobjecttextureglobal [0, "data\pictures\PC\CQB\CQB3\UrbDroite_en.paa"]; 
			ecran2_cqb3  setobjecttextureglobal [0, "data\pictures\PC\CQB\CQB3\UrbDroite_en.paa"];
			};
			case 1 : {
			_ctrl =  (findDisplay RNG_IDD) displayCtrl RNG_IDC_image_standx6;
			_ctrl ctrlSetText "data\stands\Cqb3\UrbDroite_en_ot.jpg";
			ecran1_cqb3  setobjecttextureglobal [0, "data\pictures\PC\CQB\CQB3\UrbDroite_en_ot.paa"]; 
			ecran2_cqb3  setobjecttextureglobal [0, "data\pictures\PC\CQB\CQB3\UrbDroite_en_ot.paa"];
			};
			case 2 : {
			_ctrl =  (findDisplay RNG_IDD) displayCtrl RNG_IDC_image_standx6;
			_ctrl ctrlSetText "data\stands\Cqb3\UrbGauche_en.jpg";
			ecran1_cqb3  setobjecttextureglobal [0, "data\pictures\PC\CQB\CQB3\UrbGauche_en.paa"]; 
			ecran2_cqb3  setobjecttextureglobal [0, "data\pictures\PC\CQB\CQB3\UrbGauche_en.paa"];
			};
			case 3 : {
			_ctrl =  (findDisplay RNG_IDD) displayCtrl RNG_IDC_image_standx6;
			_ctrl ctrlSetText "data\stands\Cqb3\UrbGauche_en_ot.jpg";
			ecran1_cqb3  setobjecttextureglobal [0, "data\pictures\PC\CQB\CQB3\UrbGauche_en_ot.paa"]; 
			ecran2_cqb3  setobjecttextureglobal [0, "data\pictures\PC\CQB\CQB3\UrbGauche_en_ot.paa"];
			};
			case 4 : {
			_ctrl =  (findDisplay RNG_IDD) displayCtrl RNG_IDC_image_standx6;
			_ctrl ctrlSetText "data\stands\Cqb3\bvd_en.jpg";
			ecran1_cqb3  setobjecttextureglobal [0, "data\pictures\PC\CQB\CQB3\bvd_en.paa"]; 
			ecran2_cqb3  setobjecttextureglobal [0, "data\pictures\PC\CQB\CQB3\bvd_en.paa"];
			};
			case 5 : {
			_ctrl =  (findDisplay RNG_IDD) displayCtrl RNG_IDC_image_standx6;
			_ctrl ctrlSetText "data\stands\Cqb3\bvd_en_ot.jpg";
			ecran1_cqb3  setobjecttextureglobal [0, "data\pictures\PC\CQB\CQB3\bvd_en_ot.paa"]; 
			ecran2_cqb3  setobjecttextureglobal [0, "data\pictures\PC\CQB\CQB3\bvd_en_ot.paa"];
			};
		};
	};
};
	_ctrl =  (findDisplay RNG_IDD) displayCtrl RNG_IDC_start;
	_ctrl ctrlSetText format ["Exec>>%1", _levelName];
	_ctrl =  (findDisplay RNG_IDD) displayCtrl RNG_IDC_clear;
	_ctrl ctrlSetText format ["STOP"];
	if (_siteClearScript == "") then {
		_ctrl ctrlEnable false;
	} else {
		_ctrl ctrlEnable true;
		_expr = format ["[%1, '%2', false, false] call BIS_fnc_MP;", _levelClearArgs, _siteClearScript];
		_ctrl ctrlSetEventHandler ["ButtonClick",_expr];
	};
};
ECI_RNG_start = {
    _dlg = findDisplay RNG_IDD;
	_ctrl = _dlg displayCtrl RNG_IDC_EncoursCQB;
	_ctrl ctrlSetText "EPREUVE EN COURS"; 
	_lbdata = lbData [RNG_IDC_levels, lbCurSel RNG_IDC_levels];
	_data = [_lbdata,"#"] call BIS_fnc_splitString;
	_module = _data select 0;
	_site = _data select 1;
	_level = _data select 2;
	_levelName = getText (missionConfigFile >> _module >> _site >> _level >> "name");
	_siteStartScript = getText (missionConfigFile >> _module >> _site >> "startScript");
	_levelStartArgs = getArray (missionConfigFile >> _module >> _site >> _level >> "startArgs");
	_levelStartArgs execVM _siteStartScript;
	_ctrl = _dlg displayCtrl RNG_IDC_TitleLevel;
	_ctrl ctrlSetText _levelName;
	_ctrl = _dlg displayCtrl RNG_IDC_EncoursCQB;
	_ctrl ctrlSetText "INITIALISATION ....";
};
ECI_RNG_IN = {
	(_this displayCtrl RNG_IDC_range) ctrlSetPosition [LEFTDIV_X,LEFTDIV_Y];
};
ECI_RNG_window_animationIN = {
	(_this displayCtrl RNG_IDC_window)  ctrlSetPosition [LEFTDIV_W * 0.2,LEFTDIV_H * 0.2];
	(_this displayCtrl RNG_IDC_window)  ctrlCommit 2;
};
ECI_RNG_scores = {
	disableSerialization; 
	_dlg = findDisplay RNG_IDD;
	_ctrl = _dlg displayCtrl RNG_IDC_ElimCQB;
	_ctrl ctrlSetText format ["HeadShots : %1", Elimine];
	_ctrl = _dlg displayCtrl RNG_IDC_blesseCQB;
	_ctrl ctrlSetText format ["Neutralisés : %1", Blesse];
	_ctrl = _dlg displayCtrl RNG_IDC_civilCQB;
	_ctrl ctrlSetText format ["Civils blessés : %1", Civil];
	_ctrl = _dlg displayCtrl RNG_IDC_DureeexoCQB;
	_ctrl ctrlSetText format ["Temps : %1 sec", DureeExCQB];
	};
ECI_RNG_effacerscore = {
    _isRunning = missionNamespace getVariable "isCqb1Running";
	disableSerialization;
	Elimine = 0;
	Blesse = 0;
	Civil = 0;
	DureeExCQB = 0;
	publicVariable "Elimine";
	publicVariable "Blesse";
	publicVariable "Civil";	
	publicVariable "DureeExCQB";
	_dlg = findDisplay RNG_IDD;
	_ctrl = _dlg displayCtrl RNG_IDC_ElimCQB;
	_ctrl ctrlSetText format ["HeadShots : %1", Elimine];
	_ctrl = _dlg displayCtrl RNG_IDC_blesseCQB;
	_ctrl ctrlSetText format ["Neutralisés : %1", Blesse];
	_ctrl = _dlg displayCtrl RNG_IDC_civilCQB;
	_ctrl ctrlSetText format ["Civils blessés : %1", Civil];
	_ctrl = _dlg displayCtrl RNG_IDC_DureeexoCQB;
	_ctrl ctrlSetText format ["Temps : %1 sec", DureeExCQB];
if (!_isRunning) then {
	_ctrl = _dlg displayCtrl RNG_IDC_EncoursCQB;
	_ctrl ctrlSetText " "; } else {
	_ctrl = _dlg displayCtrl RNG_IDC_EncoursCQB;
	_ctrl ctrlSetText "EXERCICE EN COURS"; }	
};
ECI_RNG_EffaceEncours = {	
	_dlg = findDisplay RNG_IDD;
	_ctrl = _dlg displayCtrl RNG_IDC_EncoursCQB;
	_ctrl ctrlSetText " ";
};	
ECI_RNG_Nuit = {
_now = date;  
_year = _now select 0;
_month = _now select 1;
_day = _now select 2;
_hour = 0;
[[ _year, _month, _day, _hour],"HappI_fnc_broadcastJourNuit",false, false] spawn BIS_fnc_MP;
};
ECI_RNG_jour = {
_now = date;  
_year = _now select 0;
_month = _now select 1;
_day = _now select 2;
_hour = 10;
[[ _year, _month, _day, _hour],"HappI_fnc_broadcastJourNuit",false, false] spawn BIS_fnc_MP;
};
ECI_RNG_MajCibles = {
	_NbCibles3 = _this select 0;
	_NbCivils = _this select 1;
	_dlg = findDisplay RNG_IDD;
	_ctrl = _dlg displayCtrl RNG_IDC_ElimCQB;
	_ctrl ctrlSetText format ["HeadShots : 0 /%1",  _NbCibles3]; 
	_ctrl = _dlg displayCtrl RNG_IDC_blesseCQB;
	_ctrl ctrlSetText format ["Neutralisés : 0 /%1",  _NbCibles3];
	_ctrl = _dlg displayCtrl RNG_IDC_civilCQB;
	_ctrl ctrlSetText format ["Civils blessés : 0 /%1", _NbCivils];
	_ctrl = _dlg displayCtrl RNG_IDC_EncoursCQB;
	_ctrl ctrlSetText "EXERCICE EN COURS";
};
ECI_RNG_ClearTitleEx = {
_dlg = findDisplay RNG_IDD;
_levelName = "";
	_ctrl = _dlg displayCtrl RNG_IDC_TitleLevel;
	_ctrl ctrlSetText _levelName;
	_ctrl = _dlg displayCtrl RNG_IDC_ElimCQB;
	_ctrl ctrlSetText "HeadShots : 0 /0"; 
	_ctrl = _dlg displayCtrl RNG_IDC_blesseCQB;
	_ctrl ctrlSetText "Neutralisés : 0 /0"  ;
	_ctrl = _dlg displayCtrl RNG_IDC_civilCQB;
	_ctrl ctrlSetText "Civils blessés : 0 /0" ;
	_ctrl = _dlg displayCtrl RNG_IDC_DureeexoCQB;
	_ctrl ctrlSetText "Temps : 0 sec" ;
};






