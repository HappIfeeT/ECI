////////////////////////////////////////////////////////
//                  2015 Arma 3                       //
//           	 Vetulus aka HappIfeeT                //
//                      GhOsT                         //
//            Ecole et Centre d'instruction           //
////////////////////////////////////////////////////////

// Hit Part EventHandler
bullet = _this select 2;
publicVariable "bullet";
deleteVehicle bullet;
bullet = [];
publicVariable "bullet";