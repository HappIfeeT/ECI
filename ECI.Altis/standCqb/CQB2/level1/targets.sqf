////////////////////////////////////////////////////////
//                                                    //
//                  2015 Arma 3                       //
//           	 Vetulus aka HappIfeeT                //
//             - http://www.eusares.fr -              //
//            Ecole et Centre d'instruction           //
////////////////////////////////////////////////////////


//Visibles
//entree
if(random 1 > 0.5) then {
_pos = [15229.845703,17439.673828,0.0086937];
_object = createVehicle ["TargetP_Inf3_Acc1_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 190;
_object setPosATL _pos;
deleteVehicle _object;
_object = createVehicle ["TargetP_Inf3_Acc1_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 190;
_object setPosATL _pos;
cqb2Targets set [count cqb2Targets, _object]; 
sleep 0.001;
} else {
_pos = [15229.0625,17437.568359,1.61995];
_object = createVehicle ["TargetP_Inf3_Acc1_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 200;
_object setPosATL _pos;
deleteVehicle _object;
_object = createVehicle ["TargetP_Inf3_Acc1_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 200;
_object setPosATL _pos;
Cqb2Targets set [count Cqb2Targets, _object];
sleep 0.001;
};
//cibles permanente
//1°couloir
_pos = [15240.314453,17445.195313,-0.0292797];
_object = createVehicle ["TargetP_Inf3_Acc1_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 46;
_object setPosATL _pos;
cqb2Targets set [count cqb2Targets, _object]; 
_pos = [15220.93457,17426.435547,0.00351334];
_object = createVehicle ["TargetP_Inf3_Acc1_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 226;
_object setPosATL _pos;
cqb2Targets set [count cqb2Targets, _object]; 
/////
if(random 1 > 0.5) then {
_pos = [15235.692383,17442.693359,-0.014513];
_object = createVehicle ["TargetP_Inf3_Acc1_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 220;
_object setPosATL _pos;
deleteVehicle _object;
_object = createVehicle ["TargetP_Inf3_Acc1_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 220;
_object setPosATL _pos;
cqb2Targets set [count cqb2Targets, _object]; 
sleep 0.001;
} else {
_pos = [15236.369141,17444.986328,0.0566025];
_object = createVehicle ["TargetP_Inf3_Acc1_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 310;
_object setPosATL _pos;
deleteVehicle _object;
_object = createVehicle ["TargetP_Inf3_Acc1_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 310;
_object setPosATL _pos;
cqb2Targets set [count cqb2Targets, _object]; 
sleep 0.001;
};

if(random 1 > 0.5) then {
_pos = [15241.719727,17442.923828,-0.0663948];
_object = createVehicle ["TargetP_Inf3_Acc1_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 43;
_object setPosATL _pos;
deleteVehicle _object;
_object = createVehicle ["TargetP_Inf3_Acc1_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 43;
_object setPosATL _pos;
cqb2Targets set [count cqb2Targets, _object]; 
sleep 0.001;
} else {
_pos = [15240.345703,17440.507813,-0.0660706];
_object = createVehicle ["TargetP_Inf3_Acc1_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 115;
_object setPosATL _pos;
deleteVehicle _object;
_pos = [15240.345703,17440.507813,-0.0660706];
_object = createVehicle ["TargetP_Inf3_Acc1_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 115;
_object setPosATL _pos;
cqb2Targets set [count cqb2Targets, _object]; 
sleep 0.001;
};

if(random 1 > 0.5) then {
_pos = [15237.0888672,17437.693359,-0.0394402];
_object = createVehicle ["TargetP_Inf3_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 50;
_object setPosATL _pos;
deleteVehicle _object;
_object = createVehicle ["TargetP_Inf3_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 50;
_object setPosATL _pos;
cqb2Targets set [count cqb2Targets, _object]; 
sleep 0.001;
} else {
_pos = [15235.00390625,17434.736328,0.0136795];
_object = createVehicle ["TargetP_Inf3_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 120;
_object setPosATL _pos;
deleteVehicle _object;
_object = createVehicle ["TargetP_Inf3_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 120;
_object setPosATL _pos;
cqb2Targets set [count cqb2Targets, _object]; 
sleep 0.001;
};
/////////////////////////////////////////////////////////
if(random 1 > 0.5) then {
_pos = [15224.799805,17433.0429688,0.00575066];
_object = createVehicle ["TargetP_Inf3_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 250;
_object setPosATL _pos;
deleteVehicle _object;
_object = createVehicle ["TargetP_Inf3_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 250;
_object setPosATL _pos;
cqb2Targets set [count cqb2Targets, _object]; 
sleep 0.001;
} else {
_pos = [15226.180664,17435.855469,0.100197];
_object = createVehicle ["TargetP_Inf3_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 340;
_object setPosATL _pos;
deleteVehicle _object;
_object = createVehicle ["TargetP_Inf3_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 340;
_object setPosATL _pos;
cqb2Targets set [count cqb2Targets, _object]; 
sleep 0.001;
};

if(random 1 > 0.5) then {
_pos = [15228.987305,17428.808594,0.000139236];
_object = createVehicle ["TargetP_Inf3_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 140;
_object setPosATL _pos;
deleteVehicle _object;
_object = createVehicle ["TargetP_Inf3_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 140;
_object setPosATL _pos;
cqb2Targets set [count cqb2Targets, _object]; 
sleep 0.001;
} else {
_pos = [15230.382813,17431.0703125,0.0130062];
_object = createVehicle ["TargetP_Inf3_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 80;
_object setPosATL _pos;
deleteVehicle _object;
_object = createVehicle ["TargetP_Inf3_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 80;
_object setPosATL _pos;
cqb2Targets set [count cqb2Targets, _object]; 
sleep 0.001;
};

if(random 1 > 0.5) then {
_pos = [15227.0458984,17426.384766,0.000118256];
_object = createVehicle ["TargetP_Inf2_Acc1_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 110;
_object setPosATL _pos;
deleteVehicle _object;
_object = createVehicle ["TargetP_Inf2_Acc1_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 110;
_object setPosATL _pos;
cqb2Targets set [count cqb2Targets, _object]; 
sleep 0.001;
} else {
_pos = [15222.655273,17424.726563,0.00282288];
_object = createVehicle ["TargetP_Inf2_Acc1_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 230;
_object setPosATL _pos;
deleteVehicle _object;
_object = createVehicle ["TargetP_Inf2_Acc1_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 230;
_object setPosATL _pos;
cqb2Targets set [count cqb2Targets, _object]; 
sleep 0.001;
};


if(random 1 > 0.5) then {
_pos = [15225.395508,17425.396484,-0.0519104];
_object = createVehicle ["TargetP_Inf2_Acc1_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 150;
_object setPosATL _pos;
deleteVehicle _object;
_object = createVehicle ["TargetP_Inf2_Acc1_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 150;
_object setPosATL _pos;
cqb2Targets set [count cqb2Targets, _object]; 
sleep 0.001;
} else {
_pos = [15224.112305,17424.169922,-0.04986];
_object = createVehicle ["TargetP_Inf2_Acc1_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 190;
_object setPosATL _pos;
deleteVehicle _object;
_object = createVehicle ["TargetP_Inf2_Acc1_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 190;
_object setPosATL _pos;
cqb2Targets set [count cqb2Targets, _object]; 
sleep 0.001;
};
//////////////
if(random 1 > 0.5) then {
_pos = [15221.43457,17431.335938,-0.170668];
_object = createVehicle ["TargetP_Inf2_Acc1_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 20;
_object setPosATL _pos;
deleteVehicle _object;
_object = createVehicle ["TargetP_Inf2_Acc1_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 20;
_object setPosATL _pos;
cqb2Targets set [count cqb2Targets, _object]; 
sleep 0.001;
} else {
_pos = [15222.106445,17429.818359,-0.20532];
_object = createVehicle ["TargetP_Inf2_Acc1_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 40;
_object setPosATL _pos;
deleteVehicle _object;
_object = createVehicle ["TargetP_Inf2_Acc1_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 40;
_object setPosATL _pos;
cqb2Targets set [count cqb2Targets, _object]; 
sleep 0.001;
};

if(random 1 > 0.5) then {
_pos = [15220.369141,17429.685547,-0.173536];
_object = createVehicle ["TargetP_Inf2_Acc1_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 350;
_object setPosATL _pos;
deleteVehicle _object;
_object = createVehicle ["TargetP_Inf2_Acc1_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 350;
_object setPosATL _pos;
cqb2Targets set [count cqb2Targets, _object]; 
sleep 0.001;
} else {
_pos = [15218.921875,17428.513672,-0.189751];
_object = createVehicle ["TargetP_Inf2_Acc1_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 310;
_object setPosATL _pos;
deleteVehicle _object;
_object = createVehicle ["TargetP_Inf2_Acc1_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 310;
_object setPosATL _pos;
cqb2Targets set [count cqb2Targets, _object]; 
sleep 0.001;
};

if(random 1 > 0.5) then {
_pos = [15228.724609,17439.673828,3.49715];
_object = createVehicle ["TargetP_Inf3_Acc1_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 46;
_object setPosATL _pos;
deleteVehicle _object;
_object = createVehicle ["TargetP_Inf3_Acc1_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 46;
_object setPosATL _pos;
cqb2Targets set [count cqb2Targets, _object]; 
sleep 0.001;
} else {
_pos = [15231.0527344,17441.689453,3.45018];
_object = createVehicle ["TargetP_Inf3_Acc1_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 352;
_object setPosATL _pos;
deleteVehicle _object;
_pos = [15231.0527344,17441.689453,3.45018];
_object = createVehicle ["TargetP_Inf3_Acc1_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 352;
_object setPosATL _pos;
cqb2Targets set [count cqb2Targets, _object]; 
sleep 0.001;
};

/////


if(random 1 > 0.5) then {
_pos = [15235.692383,17442.693359,3.30];
_object = createVehicle ["TargetP_Inf3_Acc1_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 220;
_object setPosATL _pos;
deleteVehicle _object;
_object = createVehicle ["TargetP_Inf3_Acc1_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 220;
_object setPosATL _pos;
cqb2Targets set [count cqb2Targets, _object]; 
sleep 0.001;
} else {
_pos = [15236.369141,17444.986328,3.30];
_object = createVehicle ["TargetP_Inf3_Acc1_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 310;
_object setPosATL _pos;
deleteVehicle _object;
_object = createVehicle ["TargetP_Inf3_Acc1_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 310;
_object setPosATL _pos;
cqb2Targets set [count cqb2Targets, _object]; 
sleep 0.001;
};

if(random 1 > 0.5) then {
_pos = [15241.719727,17442.923828,3.30];
_object = createVehicle ["TargetP_Inf3_Acc1_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 43;
_object setPosATL _pos;
deleteVehicle _object;
_object = createVehicle ["TargetP_Inf3_Acc1_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 43;
_object setPosATL _pos;
cqb2Targets set [count cqb2Targets, _object]; 
sleep 0.001;
} else {
_pos = [15240.345703,17440.507813,3.30];
_object = createVehicle ["TargetP_Inf3_Acc1_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 115;
_object setPosATL _pos;
deleteVehicle _object;
_object = createVehicle ["TargetP_Inf3_Acc1_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 115;
_object setPosATL _pos;
cqb2Targets set [count cqb2Targets, _object]; 
sleep 0.001;
};

if(random 1 > 0.5) then {
_pos = [15237.0888672,17437.693359,3.30];
_object = createVehicle ["TargetP_Inf3_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 50;
_object setPosATL _pos;
deleteVehicle _object;
_object = createVehicle ["TargetP_Inf3_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 50;
_object setPosATL _pos;
cqb2Targets set [count cqb2Targets, _object]; 
sleep 0.001;
} else {
_pos = [15235.00390625,17434.736328,3.30];
_object = createVehicle ["TargetP_Inf3_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 120;
_object setPosATL _pos;
deleteVehicle _object;
_object = createVehicle ["TargetP_Inf3_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 120;
_object setPosATL _pos;
cqb2Targets set [count cqb2Targets, _object]; 
sleep 0.001;
};
/////////////////////////////////////////////////////////
if(random 1 > 0.5) then {
_pos = [15224.799805,17433.0429688,3.30];
_object = createVehicle ["TargetP_Inf3_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 250;
_object setPosATL _pos;
deleteVehicle _object;
_object = createVehicle ["TargetP_Inf3_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 250;
_object setPosATL _pos;
cqb2Targets set [count cqb2Targets, _object]; 
sleep 0.001;
} else {
_pos = [15226.180664,17435.855469,3.30];
_object = createVehicle ["TargetP_Inf3_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 340;
_object setPosATL _pos;
deleteVehicle _object;
_object = createVehicle ["TargetP_Inf3_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 340;
_object setPosATL _pos;
cqb2Targets set [count cqb2Targets, _object]; 
sleep 0.001;
};

if(random 1 > 0.5) then {
_pos = [15228.987305,17428.808594,3.30];
_object = createVehicle ["TargetP_Inf3_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 140;
_object setPosATL _pos;
deleteVehicle _object;
_object = createVehicle ["TargetP_Inf3_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 140;
_object setPosATL _pos;
cqb2Targets set [count cqb2Targets, _object]; 
sleep 0.001;
} else {
_pos = [15230.382813,17431.0703125,3.30];
_object = createVehicle ["TargetP_Inf3_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 80;
_object setPosATL _pos;
deleteVehicle _object;
_object = createVehicle ["TargetP_Inf3_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 80;
_object setPosATL _pos;
cqb2Targets set [count cqb2Targets, _object]; 
sleep 0.001;
};

if(random 1 > 0.5) then {
_pos = [15227.0458984,17426.384766,3.30];
_object = createVehicle ["TargetP_Inf2_Acc1_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 110;
_object setPosATL _pos;
deleteVehicle _object;
_object = createVehicle ["TargetP_Inf2_Acc1_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 110;
_object setPosATL _pos;
cqb2Targets set [count cqb2Targets, _object]; 
sleep 0.001;
} else {
_pos = [15222.655273,17424.726563,3.30];
_object = createVehicle ["TargetP_Inf2_Acc1_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 230;
_object setPosATL _pos;
deleteVehicle _object;
_object = createVehicle ["TargetP_Inf2_Acc1_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 230;
_object setPosATL _pos;
cqb2Targets set [count cqb2Targets, _object]; 
sleep 0.001;
};


if(random 1 > 0.5) then {
_pos = [15225.395508,17425.396484,3.30];
_object = createVehicle ["TargetP_Inf2_Acc1_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 150;
_object setPosATL _pos;
deleteVehicle _object;
_object = createVehicle ["TargetP_Inf2_Acc1_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 150;
_object setPosATL _pos;
cqb2Targets set [count cqb2Targets, _object]; 
sleep 0.001;
} else {
_pos = [15224.112305,17424.169922,3.30];
_object = createVehicle ["TargetP_Inf2_Acc1_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 190;
_object setPosATL _pos;
deleteVehicle _object;
_object = createVehicle ["TargetP_Inf2_Acc1_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 190;
_object setPosATL _pos;
cqb2Targets set [count cqb2Targets, _object]; 
sleep 0.001;
};
//////////////
if(random 1 > 0.5) then {
_pos = [15221.43457,17431.335938,3.30];
_object = createVehicle ["TargetP_Inf2_Acc1_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 20;
_object setPosATL _pos;
deleteVehicle _object;
_object = createVehicle ["TargetP_Inf2_Acc1_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 20;
_object setPosATL _pos;
cqb2Targets set [count cqb2Targets, _object]; 
sleep 0.001;
} else {
_pos = [15222.106445,17429.818359,3.30];
_object = createVehicle ["Target_PopUp2_Moving_Acc1_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 40;
_object setPosATL _pos;
deleteVehicle _object;
_object = createVehicle ["Target_PopUp2_Moving_Acc1_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 40;
_object setPosATL _pos;
cqb2Targets set [count cqb2Targets, _object]; 
sleep 0.001;
};

if(random 1 > 0.5) then {
_pos = [15220.369141,17429.685547,3.30];
_object = createVehicle ["Target_PopUp2_Moving_Acc1_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 350;
_object setPosATL _pos;
deleteVehicle _object;
_object = createVehicle ["Target_PopUp2_Moving_Acc1_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 350;
_object setPosATL _pos;
cqb2Targets set [count cqb2Targets, _object]; 
sleep 0.001;
} else {
_pos = [15218.921875,17428.513672,3.30];
_object = createVehicle ["Target_PopUp2_Moving_Acc1_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 310;
_object setPosATL _pos;
deleteVehicle _object;
_object = createVehicle ["Target_PopUp2_Moving_Acc1_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 310;
_object setPosATL _pos;
cqb2Targets set [count cqb2Targets, _object]; 
sleep 0.001;
};
///
if(random 1 > 0.5) then {
_pos = [15238.913086,17445.660156,0.0116596];
_object = createVehicle ["TargetP_Inf3_Acc1_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 130;
_object setPosATL _pos;
deleteVehicle _object;
_object = createVehicle ["TargetP_Inf3_Acc1_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 130;
_object setPosATL _pos;
cqb2Targets set [count cqb2Targets, _object]; 
sleep 0.001;
} else {
_pos = [15237.635742,17439.839844,0.000162125];
_object = createVehicle ["TargetP_Inf3_Acc1_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 320;
_object setPosATL _pos;
deleteVehicle _object;
_object = createVehicle ["TargetP_Inf3_Acc1_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 320;
_object setPosATL _pos;
cqb2Targets set [count cqb2Targets, _object]; 
sleep 0.001;
};

if(random 1 > 0.5) then {
_pos = [15231.805664,17433.605469,-0.0143185];
_object = createVehicle ["TargetP_Inf3_Acc1_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 310;
_object setPosATL _pos;
deleteVehicle _object;
_object = createVehicle ["TargetP_Inf3_Acc1_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 310;
_object setPosATL _pos;
cqb2Targets set [count cqb2Targets, _object]; 
sleep 0.001;
} else {
_pos = [15228.191406,17435.0605469,0.00946617];
_object = createVehicle ["TargetP_Inf3_Acc1_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 130;
_object setPosATL _pos;
deleteVehicle _object;
_object = createVehicle ["TargetP_Inf3_Acc1_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 130;
_object setPosATL _pos;
cqb2Targets set [count cqb2Targets, _object]; 
sleep 0.001;
};

if(random 1 > 0.5) then {
_pos = [15227.164063,17428.875,-0.0101528];
_object = createVehicle ["TargetP_Inf3_Acc1_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 320;
_object setPosATL _pos;
deleteVehicle _object;
_object = createVehicle ["TargetP_Inf3_Acc1_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 320;
_object setPosATL _pos;
cqb2Targets set [count cqb2Targets, _object]; 
sleep 0.001;
} else {
_pos = [15225.992188,17427.806641,-0.0110054];
_object = createVehicle ["TargetP_Inf3_Acc1_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 320;
_object setPosATL _pos;
deleteVehicle _object;
_object = createVehicle ["TargetP_Inf3_Acc1_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 320;
_object setPosATL _pos;
cqb2Targets set [count cqb2Targets, _object]; 
sleep 0.001;
};
///



if(random 1 > 0.5) then {
_pos = [15238.913086,17445.660156,3.3];
_object = createVehicle ["TargetP_Inf3_Acc1_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 130;
_object setPosATL _pos;
deleteVehicle _object;
_object = createVehicle ["TargetP_Inf3_Acc1_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 130;
_object setPosATL _pos;
cqb2Targets set [count cqb2Targets, _object]; 
sleep 0.001;
} else {
_pos = [15237.635742,17439.839844,3.3];
_object = createVehicle ["TargetP_Inf3_Acc1_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 320;
_object setPosATL _pos;
deleteVehicle _object;
_object = createVehicle ["TargetP_Inf3_Acc1_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 320;
_object setPosATL _pos;
cqb2Targets set [count cqb2Targets, _object]; 
sleep 0.001;
};

if(random 1 > 0.5) then {
_pos = [15231.805664,17433.605469,3.3];
_object = createVehicle ["TargetP_Inf3_Acc1_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 310;
_object setPosATL _pos;
deleteVehicle _object;
_object = createVehicle ["TargetP_Inf3_Acc1_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 310;
_object setPosATL _pos;
cqb2Targets set [count cqb2Targets, _object]; 
sleep 0.001;
} else {
_pos = [15228.191406,17435.0605469,03.3];
_object = createVehicle ["TargetP_Inf3_Acc1_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 130;
_object setPosATL _pos;
deleteVehicle _object;
_object = createVehicle ["TargetP_Inf3_Acc1_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 130;
_object setPosATL _pos;
cqb2Targets set [count cqb2Targets, _object]; 
sleep 0.001;
};

if(random 1 > 0.5) then {
_pos = [15227.164063,17428.875,3.3];
_object = createVehicle ["TargetP_Inf3_Acc1_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 320;
_object setPosATL _pos;
deleteVehicle _object;
_object = createVehicle ["TargetP_Inf3_Acc1_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 320;
_object setPosATL _pos;
cqb2Targets set [count cqb2Targets, _object]; 
sleep 0.001;
} else {
_pos = [15225.992188,17427.806641,3.3];
_object = createVehicle ["TargetP_Inf3_Acc1_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 320;
_object setPosATL _pos;
deleteVehicle _object;
_object = createVehicle ["TargetP_Inf3_Acc1_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 320;
_object setPosATL _pos;
cqb2Targets set [count cqb2Targets, _object]; 
sleep 0.001;
};








///////BALCON

if(random 1 > 0.5) then {
_pos = [15223.37793,17421.662109,3.29613];
_object = createVehicle ["TargetP_Inf3_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 140;
_object setPosATL _pos;
deleteVehicle _object;
_pos = [15223.37793,17421.662109,3.29613];
_object = createVehicle ["TargetP_Inf3_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 140;
_object setPosATL _pos;
cqb2Targets set [count cqb2Targets, _object]; 
sleep 0.001;
} else {
_pos = [15224.274414,17421.5625,3.28868];
_object = createVehicle ["TargetP_Inf3_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 230;
_object setPosATL _pos;
deleteVehicle _object;
_pos = [15224.274414,17421.5625,3.28868];
_object = createVehicle ["TargetP_Inf3_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 230;
_object setPosATL _pos;
cqb2Targets set [count cqb2Targets, _object]; 
sleep 0.001;
};

if(random 1 > 0.5) then {
_pos = [15232.274414,17428.865234,3.31669];
_object = createVehicle ["TargetP_Inf3_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 50;
_object setPosATL _pos;
deleteVehicle _object;
_pos = [15232.274414,17428.865234,3.31669];
_object = createVehicle ["TargetP_Inf3_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 50;
_object setPosATL _pos;
cqb2Targets set [count cqb2Targets, _object]; 
sleep 0.001;
} else {
_pos = [15239.477539,17436.267578,3.3121];
_object = createVehicle ["TargetP_Inf3_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 50;
_object setPosATL _pos;
deleteVehicle _object;
_pos = [15239.477539,17436.267578,3.3121];
_object = createVehicle ["TargetP_Inf3_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 50;
_object setPosATL _pos;
cqb2Targets set [count cqb2Targets, _object]; 
sleep 0.001;
};

if(random 1 > 0.5) then {
_pos = [15241.469727,17438.0605469,3.30249];
_object = createVehicle ["TargetP_Inf3_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 140;
_object setPosATL _pos;
deleteVehicle _object;
_pos = [15241.469727,17438.0605469,3.30249];
_object = createVehicle ["TargetP_Inf3_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 140;
_object setPosATL _pos;
cqb2Targets set [count cqb2Targets, _object]; 
sleep 0.001;
} else {
_pos = [15237.469727,17433.0605469,3.30735];
_object = createVehicle ["TargetP_Inf3_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 140;
_object setPosATL _pos;
deleteVehicle _object;
_pos = [15237.469727,17433.0605469,3.30735];
_object = createVehicle ["TargetP_Inf3_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 140;
_object setPosATL _pos;
cqb2Targets set [count cqb2Targets, _object]; 
sleep 0.001;
};

if(random 1 > 0.5) then {
_pos = [15234.469727,17431.0605469,3.31811];
_object = createVehicle ["TargetP_Inf3_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 140;
_object setPosATL _pos;
deleteVehicle _object;
_pos = [15234.469727,17431.0605469,3.31811];
_object = createVehicle ["TargetP_Inf3_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 140;
_object setPosATL _pos;
cqb2Targets set [count cqb2Targets, _object]; 
sleep 0.001;
} else {
_pos = [15229.768555,17426.259766,3.3155];
_object = createVehicle ["TargetP_Inf3_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 180;
_object setPosATL _pos;
deleteVehicle _object;
_pos = [15229.768555,17426.259766,3.3155];
_object = createVehicle ["TargetP_Inf3_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 180;
_object setPosATL _pos;
cqb2Targets set [count cqb2Targets, _object]; 
sleep 0.001;
};

