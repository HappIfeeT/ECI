////////////////////////////////////////////////////////
//                      GhOsT                         //
//                  2015 Arma 3                       //
//           	 Vetulus aka HappIfeeT                //
//                      GhOsT                         //
//            Ecole et Centre d'instruction           //
////////////////////////////////////////////////////////
//STANDS CQB2 mobiliers et déco
_objects = [

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
Cqb2Objects set [count Cqb2Objects, _object]; 
sleep 0.001;
} forEach _objects;