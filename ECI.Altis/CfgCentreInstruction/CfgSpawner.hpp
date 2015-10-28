////////////////////////////////////////////////////////
//                  2015 Arma 3                       //
//           	 Vetulus aka HappIfeeT                //
//             - http://www.eusares.fr -              //
//            Ecole et Centre d'instruction           //
////////////////////////////////////////////////////////

class Spawner
{
	name = "Spawner";
	position[] = {};
	dir = 0;
	categories[] = {"Car","Tank","Helicopter","Plane"};
};

class AirBaseSpawner : Spawner
{
	name = "VehicleSpawner";
	position[] = {14212.4,16222.6,20.32};
	dir = 282;
	categories[] = {"Car","Tank","Helicopter","Plane"};
};

class Spawner_AIR1 : Spawner
{
	name = "VehicleSpawner1";
	position[] = {14170.657227,16190.15625,0.000143051};
	dir = 100;
	categories[] = {"Helicopter","Plane"};
};

class Spawner_AIR2 : Spawner
{
	name = "VehicleSpawner2";
	position[] = {14423.694336,16250.283203,0};
	dir = 25;
	categories[] = {"Helicopter","Plane"};
};

class Spawner_TERRE1 : Spawner
{
	name = "VehicleSpawner3";
	position[] = {14347.0859375,16349.917969,3.24249e-005};
	dir = 192;
	categories[] = {"Car","Tank"};
};

class Spawner_TERRE2 : Spawner
{
	name = "VehicleSpawner4";
	position[] = {14413.286133,16334.261719,0.000406265};
	dir = 192;
	categories[] = {"Car","Tank"};
};


