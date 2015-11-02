////////////////////////////////////////////////////////
//                  2015 Arma 3                       //
//           	 Vetulus aka HappIfeeT                //
//             - http://www.eusares.fr -              //
//            Ecole et Centre d'instruction           //
////////////////////////////////////////////////////////

///////////TERRE1////////////////////////////

_pos = [14357.0644531,16348.734375,3.8147e-006];
_object = createVehicle ["Land_Portable_generator_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 0;
_object setPosATL _pos;

_pos = [14339.77832,16352.938477,9.53674e-006];
_object = createVehicle ["Land_WaterTank_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 100;
_object setPosATL _pos;

_pos = [14357.115234,16347.0302734,5.34058e-005];
_object = createVehicle ["Land_FireExtinguisher_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 0;
_object setPosATL _pos;

///////////TERRE2////////////////////////////

_pos = [14136.0429688,16194.575195,-0.000785828];
_object = createVehicle ["Land_Portable_generator_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 30;
_object setPosATL _pos;

_pos = [14131.0419922,16196.521484,0.0130882];
_object = createVehicle ["Land_WaterTank_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 20;
_object setPosATL _pos;

_pos = [14136.793945,16193.681641,1.52588e-005];
_object = createVehicle ["Land_FireExtinguisher_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 0;
_object setPosATL _pos;

/////////////AIR1////////////////////////////

_pos = [14420.661133,16329.274414,-0.0227089];
_object = createVehicle ["Land_Portable_generator_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 10;
_object setPosATL _pos;

_pos = [14405.93457,16339.665039,5.91278e-005];
_object = createVehicle ["Land_WaterTank_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 120;
_object setPosATL _pos;

_pos = [14420.339844,16327.947266,0.000123978];
_object = createVehicle ["Land_FireExtinguisher_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 0;
_object setPosATL _pos;

/////////////AIR2////////////////////////////

_pos = [14410.793945,16221.938477,-0.0001297];
_object = createVehicle ["Land_Portable_generator_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 310;
_object setPosATL _pos;

_pos = [14395.386719,16231.568359,-0.00106239];
_object = createVehicle ["Land_WaterTank_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 130;
_object setPosATL _pos;

_pos = [14411.643555,16222.678711,0.00351524];
_object = createVehicle ["Land_FireExtinguisher_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 0;
_object setPosATL _pos;

///////////ACCUEIL//////////////////////////////

_pos = [14165.884766,16255.522461,-0.0037899];
_object = createVehicle ["Land_fuel_tank_small", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 21;
_object setPosATL _pos;

_pos = [14167.21582,16254.69043,-0.105227];
_object = createVehicle ["Land_CncBlock_Stripes", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 289;
_object setPosATL _pos;

_pos = [14164.786133,16255.849609,-0.0814896];
_object = createVehicle ["Land_CncBlock_Stripes", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 112;
_object setPosATL _pos;

_pos = [14165.792969,16254.261719,-0.00348473];
_object = createVehicle ["Sr_border", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 22;
_object setPosATL _pos;

_pos = [14156.681641,16272.749023,-0.0599976];
_object = createVehicle ["Land_CncBlock_Stripes", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 26.04;
_object setPosATL _pos;

_pos = [14154.245117,16266.402344,-0.260969];
_object = createVehicle ["Land_TreeBin_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 20;
_object setPosATL _pos;
_object enablesimulation false;

_pos = [14154.552734,16266.305664,-0.940029];
_object = createVehicle ["Land_Noticeboard_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 293;
_object setPosATL _pos;
[_object, -11.9, -7.8091e-005] call BIS_fnc_setPitchBank;
_object enableSimulation false;
_object  setobjecttextureglobal [0, "data\pictures\plaque_eusares.paa"]; 
 
_pos = [14165.894531,16255.451172,-0.000776291];
_object = createVehicle ["Land_Pallet_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 203;
_object setPosATL _pos;
_object enableSimulation false;

_pos = [14166.330078,16255.552734,0.158382];
_object = createVehicle ["TargetP_HVT1_NoPop_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 210;
_object setPosATL _pos;
_object enableSimulation false;

_pos = [14165.466797,16255.661133,0.180326];
_object = createVehicle ["Land_Target_PopUp_01_figure_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 40;
_object setPosATL _pos;
_object enableSimulation false;

_pos = [14165.459961,16255.636719,0.191389];
_object = createVehicle ["Land_Target_PopUp_01_figure_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 20;
_object setPosATL _pos;
_object enableSimulation false;

_pos = [14165.506836,16255.722656,0.214003];
_object = createVehicle ["Land_Target_PopUp_01_figure_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 0;
_object setPosATL _pos;
_object enableSimulation false;

_pos = [14165.503906,16255.719727,0.240005];
_object = createVehicle ["Land_Target_PopUp_01_figure_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 10;
_object setPosATL _pos;
_object enableSimulation false;

_pos = [14165.5,16255.708984,0.260006];
_object = createVehicle ["Land_Target_PopUp_01_figure_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 220;
_object setPosATL _pos;
_object enableSimulation false;

_pos = [14165.501953,16255.703125,0.300007];
_object = createVehicle ["Land_Target_PopUp_01_mechanism_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 0;
_object setPosATL _pos;
_object enableSimulation false;
 
_pos = [14179.394531,16248.248047,-0.0294552];
_object = createVehicle ["Land_CncBlock_Stripes", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 23;
_object setPosATL _pos;
_object enableSimulation false;

_pos = [14176.950195,16249.273438,-0.0193329];
_object = createVehicle ["Land_CncBlock_Stripes", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 22;
_object setPosATL _pos;
_object enableSimulation false;

_pos = [14174.514648,16250.235352,-0.0338326];
_object = createVehicle ["Land_CncBlock_Stripes", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 20.9998;
_object setPosATL _pos;
[_object, 1.6, -0.301682] call BIS_fnc_setPitchBank;
_object enableSimulation false;


_pos = [14172.0908203,16251.199219,-0.0629845];
_object = createVehicle ["Land_CncBlock_Stripes", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 23.2997;
_object setPosATL _pos;
[_object, 0.399998, -0.134297] call BIS_fnc_setPitchBank;
_object enableSimulation false;

_pos = [14170.672852,16252.382813,3.62396e-005];
_object = createVehicle ["Land_WaterBarrel_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 0;
_object setPosATL _pos;
_object enableSimulation false;

_pos = [14169.639648,16252.795898,-0.00172043];
_object = createVehicle ["Land_WheelieBin_01_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 200;
_object setPosATL _pos;
_object enableSimulation false;

_pos = [14169.0351563,16253.0234375,0];
_object = createVehicle ["Land_WheelieBin_01_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 200;
_object setPosATL _pos;
_object enableSimulation false;

_pos = [14162.177734,16255.944336,0.000873566];
_object = createVehicle ["Land_PowerGenerator_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 293;
_object setPosATL _pos;
_object enableSimulation false;

_pos = [14162.563477,16256.811523,6.86646e-005];
_object = createVehicle ["Land_PowerGenerator_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 294;
_object setPosATL _pos;
_object enableSimulation false;

_pos = [14153.0771484,16259.817383,-1.19797];
_object = createVehicle ["SignAd_SponsorS_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 292.7;
_object setPosATL _pos;
_object enableSimulation false;

_pos = [14154.128906,16260.262695,-1.24016];
_object = createVehicle ["SignAd_SponsorS_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 203.3;
_object setPosATL _pos;
_object enableSimulation false;

_pos = [14154.128906,16260.262695,-1.24016];
_object = createVehicle ["SignAd_SponsorS_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 23.3001;
_object setPosATL _pos;
_object enableSimulation false;

_pos = [14180.078125,16247.962891,-0.00197983];
_object = createVehicle ["PlasticBarrier_02_grey_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 22.6;
_object setPosATL _pos;
_object enableSimulation false;

_pos = [14178.856445,16248.457031,6.67572e-005];
_object = createVehicle ["PlasticBarrier_02_grey_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 22;
_object setPosATL _pos;
_object enableSimulation false;

_pos = [14177.658203,16248.952148,-0.000713348];
_object = createVehicle ["PlasticBarrier_02_grey_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 23;
_object setPosATL _pos;
_object enableSimulation false;

_pos = [14176.431641,16249.473633,-0.000404358];
_object = createVehicle ["PlasticBarrier_02_grey_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 22;
_object setPosATL _pos;
_object enableSimulation false;

_pos = [14175.197266,16249.985352,-0.000204086];
_object = createVehicle ["PlasticBarrier_02_grey_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 23;
_object setPosATL _pos;
_object enableSimulation false;

_pos = [14173.998047,16250.486328,-5.34058e-005];
_object = createVehicle ["PlasticBarrier_02_grey_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 22;
_object setPosATL _pos;
_object enableSimulation false;

_pos = [14172.796875,16250.99707,-9.34601e-005];
_object = createVehicle ["PlasticBarrier_02_grey_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 23;
_object setPosATL _pos;
_object enableSimulation false;

_pos = [14171.59668,16251.527344,-0.000236511];
_object = createVehicle ["PlasticBarrier_02_grey_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 23;
_object setPosATL _pos;
_object enableSimulation false;

_pos = [14156.575195,16273.161133,-0.0294437];
_object = createVehicle ["Land_CncBarrier_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 24;
_object setPosATL _pos;
_object enableSimulation false;

_pos = [14158.276367,16276.762695,-0.0337029];
_object = createVehicle ["Land_CncBarrier_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 25;
_object setPosATL _pos;
_object enableSimulation false;

_pos = [14163.966797,16256.0517578,-0.0612717];
_object = createVehicle ["Land_CncBarrier_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 294;
_object setPosATL _pos;
_object enableSimulation false;

_pos = [14163.966797,16256.0517578,-0.0612717];
_object = createVehicle ["Land_CncBarrier_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 294;
_object setPosATL _pos;
_object enableSimulation false;

_pos = [14163.626953,16260.570313,-0.0612717];
_object = createVehicle ["Land_CncBarrier_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 24;
_object setPosATL _pos;
_object enableSimulation false;

_pos = [14161.267578,16259.523438,-0.0500031];
_object = createVehicle ["Land_CncBarrier_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 291;
_object setPosATL _pos;
_object enableSimulation false;

_pos = [14166.881836,16254.658203,0.0377789];
_object = createVehicle ["Land_Target_PopUp_01_figure_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 30.3208;
_object setPosATL _pos;
_object enableSimulation false;
////POSTERS

_pos = [14155.232422,16258.136719,2.16883];
_object = createVehicle ["UserTexture1m_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 202.801;
_object setPosATL _pos;

_object  setobjecttextureglobal [0, "data\textures\sallesdecours.paa"]; 
_object enableSimulation false;
_pos = [14153.527344,16258.852539,3.30556];
_object = createVehicle ["UserTexture1m_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 202.731;
_object setPosATL _pos;

_object  setobjecttextureglobal [0, "data\textures\entreesallesdecours.paa"]; 
_object enableSimulation false;


_pos = [14154.146484,16260.311523,1.07012];
_object = createVehicle ["UserTexture1m_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 203;
_object setPosATL _pos;
_object enableSimulation false;
_object  setobjecttextureglobal [0, "data\textures\panneausallesdecours.paa"];
///INTERIEUR

_pos = [14148.728516,16259.707031,0.597794];
_object = createVehicle ["OfficeTable_01_new_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 293;
_object setPosATL _pos;
_object enableSimulation false;

_pos = [14150.59082,16256.277344,0.697355];
_object = createVehicle ["OfficeTable_01_new_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 113;
_object setPosATL _pos;
_object enableSimulation false;

_pos = [14153.588867,16254.730469,0.689713];
_object = createVehicle ["OfficeTable_01_new_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 202;
_object setPosATL _pos;
_object enableSimulation false;

_pos = [14155.647461,16252.0722656,0.689857];
_object = createVehicle ["OfficeTable_01_new_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 202;
_object setPosATL _pos;
_object enableSimulation false;

_pos = [14156.946289,16255.171875,0.688694];
_object = createVehicle ["OfficeTable_01_new_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 202;
_object setPosATL _pos;
_object enableSimulation false;

_pos = [14161.643555,16254.171875,0.680201];
_object = createVehicle ["OfficeTable_01_new_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 112;
_object setPosATL _pos;
_object enableSimulation false;

_pos = [14157.758789,16251.203125,0.685883];
_object = createVehicle ["OfficeTable_01_new_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 202;
_object setPosATL _pos;
_object enableSimulation false;
//////

_pos = [14157.758789,16251.203125,0.685883];
_object = createVehicle ["OfficeTable_01_new_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 202;
_object setPosATL _pos;
_object enableSimulation false;
ChairECI set [count ChairECI, _object];

_pos = [14149.474609,16259.0839844,0.714266];
_object = createVehicle ["Land_OfficeChair_01_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 115;
_object setPosATL _pos;
ChairECI set [count ChairECI, _object];

_pos = [14154.0546875,16255.382813,0.696058];
_object = createVehicle ["Land_OfficeChair_01_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 21.9998;
_object setPosATL _pos;
_object enableSimulation false;
ChairECI set [count ChairECI, _object];

_pos = [14157.441406,16255.880859,0.690441];
_object = createVehicle ["Land_OfficeChair_01_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 21.9998;
_object setPosATL _pos;
_object enableSimulation false;
ChairECI set [count ChairECI, _object];

_pos = [14156.146484,16252.792969,0.693268];
_object = createVehicle ["Land_OfficeChair_01_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 21.9998;
_object setPosATL _pos;
_object enableSimulation false;
ChairECI set [count ChairECI, _object];

_pos = [14158.238281,16251.896484,0.689676];
_object = createVehicle ["Land_OfficeChair_01_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 21.9998;
_object setPosATL _pos;
_object enableSimulation false;
ChairECI set [count ChairECI, _object];


_pos = [14160.927734,16254.685547,0.683979];
_object = createVehicle ["Land_OfficeChair_01_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 292;
_object setPosATL _pos;
_object enableSimulation false;
ChairECI set [count ChairECI, _object];


_pos = [14149.873047,16256.785156,0.689945];
_object = createVehicle ["Land_OfficeChair_01_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 289.975;
_object setPosATL _pos;
_object enableSimulation false;
ChairECI set [count ChairECI, _object];
publicVariable "ChairECI";
waitUntil {!isNil "ChairECI"}; 

////

_pos = [14148.838867,16260.258789,1.39759];
_object = createVehicle ["Land_PCSet_01_case_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 297;
_object setPosATL _pos;
_object enableSimulation false;

_pos = [14150.34082,16255.807617,1.48924];
_object = createVehicle ["Land_PCSet_01_case_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 113;
_object setPosATL _pos;
_object enableSimulation false;

_pos = [14153.116211,16254.963867,1.4769];
_object = createVehicle ["Land_PCSet_01_case_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 203;
_object setPosATL _pos;
_object enableSimulation false;

_pos = [14155.21582,16252.266602,1.49379];
_object = createVehicle ["Land_PCSet_01_case_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 203;
_object setPosATL _pos;
_object enableSimulation false;

_pos = [14156.514648,16255.366211,1.49237];
_object = createVehicle ["Land_PCSet_01_case_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 203;
_object setPosATL _pos;
_object enableSimulation false;

_pos = [14157.276367,16251.426758,1.48992];
_object = createVehicle ["Land_PCSet_01_case_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 203;
_object setPosATL _pos;
_object enableSimulation false;

_pos = [14161.40918,16253.688477,1.48425];
_object = createVehicle ["Land_PCSet_01_case_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 111.999;
_object setPosATL _pos;
_object enableSimulation false;
/////

_pos = [14161.907227,16254.37207,1.51268];
_object = createVehicle ["Land_PCSet_01_screen_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 105.599;
_object setPosATL _pos;
_object enableSimulation false;
_object setobjecttextureglobal [0, "data\pictures\PC\CQB\CQB1\PC_stand.paa"];

_pos = [14157.973633,16250.918945,1.50831];
_object = createVehicle ["Land_PCSet_01_screen_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 201;
_object setPosATL _pos;
_object enableSimulation false;
_object setobjecttextureglobal [0, "data\pictures\PC\CQB\CQB1\PC_stand.paa"];


_pos = [14155.913086,16251.768555,1.5122];
_object = createVehicle ["Land_PCSet_01_screen_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 194;
_object setPosATL _pos;
_object enableSimulation false;
_object setobjecttextureglobal [0, "data\pictures\PC\CQB\CQB1\PC_stand.paa"];


_pos = [14157.211914,16254.868164,1.51144];
_object = createVehicle ["Land_PCSet_01_screen_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 201;
_object setPosATL _pos;
_object enableSimulation false;
_object setobjecttextureglobal [0, "data\pictures\PC\CQB\CQB1\PC_stand.paa"];


_pos = [14153.913086,16254.366211,1.51584];
_object = createVehicle ["Land_PCSet_01_screen_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 197;
_object setPosATL _pos;
_object enableSimulation false;
_object setobjecttextureglobal [0, "data\pictures\PC\CQB\CQB1\PC_stand.paa"];


_pos = [14150.9375,16256.504883,1.51605];
_object = createVehicle ["Land_PCSet_01_screen_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 104;
_object setPosATL _pos;
_object enableSimulation false;
_object setobjecttextureglobal [0, "data\pictures\PC\CQB\CQB1\PC_stand.paa"];


_pos = [14148.339844,16259.362305,1.4299];
_object = createVehicle ["Land_PCSet_01_screen_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 278;
_object setPosATL _pos;
_object enableSimulation false;
_object setobjecttextureglobal [0, "data\pictures\PC\CQB\CQB1\PC_stand.paa"];


////

_pos = [14148.738281,16259.362305,1.42777];
_object = createVehicle ["Land_PCSet_01_keyboard_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 278;
_object setPosATL _pos;
_object enableSimulation false;

_pos = [14148.837891,16259.860352,1.42724];
_object = createVehicle ["Land_PCSet_01_mouse_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 278;
_object setPosATL _pos;
_object enableSimulation false;

_pos = [14150.638672,16256.704102,1.51764];
_object = createVehicle ["Land_PCSet_01_keyboard_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 104;
_object setPosATL _pos;
_object enableSimulation false;

_pos = [14150.439453,16256.206055,1.51871];
_object = createVehicle ["Land_PCSet_01_mouse_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 104;
_object setPosATL _pos;
_object enableSimulation false;

_pos = [14154.0126953,16254.764648,1.51571];
_object = createVehicle ["Land_PCSet_01_keyboard_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 197;
_object setPosATL _pos;
_object enableSimulation false;

_pos = [14153.514648,16254.963867,1.51637];
_object = createVehicle ["Land_PCSet_01_mouse_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 197;
_object setPosATL _pos;
_object enableSimulation false;

_pos = [14157.311523,16255.166992,1.51131];
_object = createVehicle ["Land_PCSet_01_keyboard_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 201;
_object setPosATL _pos;
_object enableSimulation false;

_pos = [14156.813477,16255.366211,1.51197];
_object = createVehicle ["Land_PCSet_01_mouse_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 201;
_object setPosATL _pos;
_object enableSimulation false;

_pos = [14156.0126953,16252.0673828,1.51247];
_object = createVehicle ["Land_PCSet_01_keyboard_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 194;
_object setPosATL _pos;
_object enableSimulation false;

_pos = [14155.514648,16252.266602,1.5134];
_object = createVehicle ["Land_PCSet_01_mouse_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 224;
_object setPosATL _pos;
_object enableSimulation false;

_pos = [14158.172852,16251.217773,1.50844];
_object = createVehicle ["Land_PCSet_01_keyboard_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 191;
_object setPosATL _pos;
_object enableSimulation false;

_pos = [14157.575195,16251.416992,1.50951];
_object = createVehicle ["Land_PCSet_01_mouse_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 241;
_object setPosATL _pos;
_object enableSimulation false;

_pos = [14161.508789,16254.37207,1.51321];
_object = createVehicle ["Land_PCSet_01_keyboard_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 105.599;
_object setPosATL _pos;
_object enableSimulation false;


_pos = [14161.40918,16253.973633,1.51388];
_object = createVehicle ["Land_PCSet_01_mouse_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 135.599;
_object setPosATL _pos;
_object enableSimulation false;
