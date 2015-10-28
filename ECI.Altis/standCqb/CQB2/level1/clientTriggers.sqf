////////////////////////////////////////////////////////
//                  2015 Arma 3                       //
//           	 Vetulus aka HappIfeeT                //
//             - http://www.eusares.fr -              //
//            Ecole et Centre d'instruction           //
////////////////////////////////////////////////////////

//trigger arret chrono
	_triggerPos =[15216.211914,17428.316406,142];
	_tgrStatement = "nul = execVM 'standCqb\CQB2\stopchrono.sqf';";
	_tgrCondition = "this";
	_tgr = createTrigger ["EmptyDetector",_triggerPos];
	_dir = _triggerPos select 2;
	_tgr setTriggerArea [ 1, 1, _dir, false];
	_tgr setTriggerActivation ["WEST", "PRESENT", false];
	_tgr setTriggerStatements [_tgrCondition, _tgrStatement, ""];
	stopCqb2 = _tgr;
	publicVariable "stopCqb2";
 
