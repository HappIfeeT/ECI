////////////////////////////////////////////////////////
//                  2015 Arma 3                       //
//           	 Vetulus aka HappIfeeT                //
//             - http://www.eusares.fr -              //
//            Ecole et Centre d'instruction           //
////////////////////////////////////////////////////////

//////CQB2/////////////////////
_pos = [15225.322266,17444.277344,0.813095];
_object = createVehicle ["Land_File2_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 240;
_object setPosATL _pos;
_object enablesimulation false; 


_pos = [15225.333984,17444.275391,0.82234];
_object = createVehicle ["Land_File2_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 250;
_object setPosATL _pos;
_object enableSimulation false;

_pos = [15225.322266,17444.226563,0.83329];
_object = createVehicle ["Land_File2_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 210;
_object setPosATL _pos;
_object enableSimulation false;


_pos = [15928.167969,16289.46582,1.44237];
//_pos = [15929.602539,16295.0107422,1.20001];
_object = createVehicle ["UserTexture1m_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 140;
_object setPosATL _pos;
_object setObjectTextureGlobal [0,"data\textures\grafano2.paa"];
//_oject setObjectTextureGlobal [0,"data\textures\black.paa"];
  
_object enableSimulation false;


/*
_pos = [15929.602539,16295.0107422,1.20001];
_object = createVehicle ["UserTexture1m_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 90;
_object setPosATL _pos;


*/