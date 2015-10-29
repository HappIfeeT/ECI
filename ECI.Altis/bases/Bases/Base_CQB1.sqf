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

_pos = [14154.453125,16266.305664,-0.9755];
_object = createVehicle ["Land_Noticeboard_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 293;
_object setPosATL _pos;
_object  setobjecttextureglobal [0, "data\pictures\plaque_eusares.paa"]; 

