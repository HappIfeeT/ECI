////////////////////////////////////////////////////////
//                  2015 Arma 3                       //
//           	 Vetulus aka HappIfeeT                //
//             - http://www.eusares.fr -              //
//            Ecole et Centre d'instruction           //
////////////////////////////////////////////////////////
//trigger surprise
	//_triggerPos = [14228.225586,16307.142578,52];
	_triggerPos = [14225.973633,16305.189453,52];
	_tgrStatement = "nul = execVM 'standCqb\CQB1\level4\trigger.sqf';";
	_tgrCondition = "this ";
	_tgr = createTrigger ["EmptyDetector",_triggerPos];
	_dir = _triggerPos select 2;
	_tgr setTriggerArea [ 3.5, 1, _dir, true];
	_tgr setTriggerActivation ["WEST", "PRESENT", false];
	_tgr setTriggerStatements [_tgrCondition, _tgrStatement, ""];
	triggersCqb1 = _tgr;
//trigger arret chrono
	_triggerPos =[14233.142578,16292.0322266,142];
	_tgrStatement = "nul = execVM 'standCqb\CQB1\stopchrono.sqf';";
	_tgrCondition = "this";
	_tgr = createTrigger ["EmptyDetector",_triggerPos];
	_dir = _triggerPos select 2;
	_tgr setTriggerArea [ 2, 1.5, _dir, true];
	_tgr setTriggerActivation ["WEST", "PRESENT", false];
	_tgr setTriggerStatements [_tgrCondition, _tgrStatement, ""];
	stopCqb1 = _tgr;
	publicVariable "stopCqb1";


