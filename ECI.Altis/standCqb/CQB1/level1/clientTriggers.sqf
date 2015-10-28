////////////////////////////////////////////////////////
//                  2015 Arma 3                       //
//           	 Vetulus aka HappIfeeT                //
//             - http://www.eusares.fr -              //
//            Ecole et Centre d'instruction           //
////////////////////////////////////////////////////////

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

