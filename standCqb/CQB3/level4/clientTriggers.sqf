////////////////////////////////////////////////////////
//                  2015 Arma 3                       //
//           	 Vetulus aka HappIfeeT                //
//                      GhOsT                         //
//            Ecole et Centre d'instruction           //
////////////////////////////////////////////////////////

//trigger arret chrono
	_triggerPos =[16100.0908203,16218.605469,290];
	_tgrStatement = "nul = execVM 'standCqb\CQB3\stopchrono.sqf';";
	_tgrCondition = "this";
	_tgr = createTrigger ["EmptyDetector",_triggerPos];
	_dir = _triggerPos select 2;
	_tgr setTriggerArea [ 50, 1.5, _dir, true];
	_tgr setTriggerActivation ["WEST", "PRESENT", false];
	_tgr setTriggerStatements [_tgrCondition, _tgrStatement, ""];
	stopCqb3 = _tgr;
	publicVariable "stopCqb3";
 
//trigger Group 0 
	_triggerPos =[15932.826172,16279.699219,340];
	_tgrStatement = "nul = execVM 'standCqb\CQB3\level3\group0.sqf';";
	_tgrCondition = "this";
	_tgr = createTrigger ["EmptyDetector",_triggerPos];
	_dir = _triggerPos select 2;
	_tgr setTriggerArea [ 5, 2, _dir, true];
	_tgr setTriggerActivation ["WEST", "PRESENT", false];
	_tgr setTriggerStatements [_tgrCondition, _tgrStatement, ""];
	triggerCqb3Group0 = _tgr;
	
//trigger Group 1 
	_triggerPos =[15971.579102,16240.558594,290];
	_tgrStatement = "nul = execVM 'standCqb\CQB3\level3\group1.sqf';";
	_tgrCondition = "this";
	_tgr = createTrigger ["EmptyDetector",_triggerPos];
	_dir = _triggerPos select 2;
	_tgr setTriggerArea [ 25, 2.5, _dir, true];
	_tgr setTriggerActivation ["WEST", "PRESENT", false];
	_tgr setTriggerStatements [_tgrCondition, _tgrStatement, ""];
	triggerCqb3Group1 = _tgr;	

//trigger Group 2 
	_triggerPos =[15986.575195,16240.34375,280];
	_tgrStatement = "nul = execVM 'standCqb\CQB3\level3\group2.sqf';";
	_tgrCondition = "this";
	_tgr = createTrigger ["EmptyDetector",_triggerPos];
	_dir = _triggerPos select 2;
	_tgr setTriggerArea [ 25, 2.5, _dir, true];
	_tgr setTriggerActivation ["WEST", "PRESENT", false];
	_tgr setTriggerStatements [_tgrCondition, _tgrStatement, ""];
	triggerCqb3Group2 = _tgr;
 
//trigger Group 3 
	_triggerPos =[16032.172852,16225.554688,280];
	_tgrStatement = "nul = execVM 'standCqb\CQB3\level3\group3.sqf';";
	_tgrCondition = "this";
	_tgr = createTrigger ["EmptyDetector",_triggerPos];
	_dir = _triggerPos select 2;
	_tgr setTriggerArea [ 25, 2.5, _dir, true];
	_tgr setTriggerActivation ["WEST", "PRESENT", false];
	_tgr setTriggerStatements [_tgrCondition, _tgrStatement, ""];
	triggerCqb3Group3 = _tgr;

 

 


 

