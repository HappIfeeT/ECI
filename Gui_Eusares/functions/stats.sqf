////////////////////////////////////////////////////////
//                      GhOsT                         //
//                  2015 Arma 3                       //
//           	 Vetulus aka HappIfeeT                //
//                      GhOsT                         //
//            Ecole et Centre d'instruction           //
////////////////////////////////////////////////////////

ECI_STATS_load = {
	(_this displayCtrl STATS_IDC_header) ctrlSetText (getText (missionConfigFile >> "ECI" >> "ucppic"));
	_this call ECI_STATS_animationIN;

	//load table if persistence is active
	if (ECI getVariable "isPersistenceActive") then {
		_filter = "%";
		[[player, _filter,"ECI_STATS_displayStats"],"DB_fnc_sendGlobalStats",false, false] call BIS_fnc_MP;
	};
};

ECI_STATS_displayStats = {
	disableSerialization; //needed because func is triggered remotely by BIS_fnc_MP
	_rs = call compile (_this select 0);
	_rows = _rs select 0;

	_ctrl = (findDisplay STATS_IDD) displayCtrl STATS_IDC_table;
	{
		_pic = "";
		_site = _x select 0;
		_level = _x select 1;
		_pop = _x select 2;
		_avg = _x select 3;
		_max = _x select 4;
		_min = _x select 5;
		_dev = _x select 6;

		_modules = getArray (missionConfigFile >> "ECI" >> "modules");
		{
			_module = _x;
			_sites = getArray (missionConfigFile >> _module >> "sites");
			{
				_forSite = _x;
				_siteName = getText (missionConfigFile >> _module >> _forSite >> "name");
				if (_siteName == _site) then {
					_pic = getText (missionConfigFile >> _module >> "pic");
				};
			} forEach _sites;
		} forEach _modules;

		_i = _ctrl lnbAddRow ["", _site,_level,_pop,_avg,_max,_min,_dev];
		_ctrl lnbSetPicture [[_i, 0], _pic];
	} forEach _rows;
};

ECI_STATS_animationIN = {
	(_this displayCtrl STATS_IDC_header) ctrlSetPosition [HEADER_X, HEADER_Y];
	(_this displayCtrl STATS_IDC_mainDiv) ctrlSetPosition [MAINDIV_X, MAINDIV_Y];

	(_this displayCtrl STATS_IDC_header) ctrlCommit 0.3;
	(_this displayCtrl STATS_IDC_mainDiv) ctrlCommit 0.3;
};