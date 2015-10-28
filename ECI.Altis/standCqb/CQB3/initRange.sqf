////////////////////////////////////////////////////////
//                  2015 Arma 3                       //
//           	 Vetulus aka HappIfeeT                //
//             - http://www.eusares.fr -              //
//            Ecole et Centre d'instruction           //
////////////////////////////////////////////////////////
//InitRange Stand Cqb2
_objects = [
//DEPART
		[[15937.363281,16293.772461,-0.00159073],   315,        "Land_Obstacle_Cross_F"],
		[[15935.196289,16291.566406,0.00138283],    315,        "Land_Obstacle_Cross_F"],
		[[15936.0517578,16295.181641,0.000555038],  315,        "Land_Obstacle_Cross_F"],
		[[15933.875977,16293.0078125,-0.000101089], 315,        "Land_Obstacle_Cross_F"], 
		[[15932.770508,16291.90625,-0.000150681],     0,                       "Pole_F"],
		[[15934.0869141,16290.466797,3.8147e-006],    0,                       "Pole_F"], 
		[[15935.162109,16295.19043,-0.18906],       317, "Land_Concrete_SmallWall_8m_F"],
		[[15934.854492,16295.53418,-0.192904],      317, "Land_Concrete_SmallWall_8m_F"], 
		[[15950.100586,16290.314453,1],             318, "Land_Concrete_SmallWall_8m_F"],
		[[15949.105469,16303.543945,-0.452393],     310, "Land_Concrete_SmallWall_8m_F"], 
		[[15929.109375,16289.954102,1.33367],       320, "Land_Concrete_SmallWall_8m_F"] 
];
{
_pos = _x select 0;
_object = createVehicle [_x select 2, _pos, [], 0, "CAN_COLLIDE"];
_object setDir (_x select 1);
_object setPosATL _pos;
deleteVehicle _object; 
_object = createVehicle [_x select 2, _pos, [], 0, "CAN_COLLIDE"];
_object setDir (_x select 1);
_object setPosATL _pos;
_object enablesimulation false;
_object allowDamage false;
Cqb3Objects set [count Cqb3Objects, _object]; 
sleep 0.001;
} forEach _objects;





























