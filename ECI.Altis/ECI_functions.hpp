////////////////////////////////////////////////////////

//                  2015 Arma 3                       //
//           	 Vetulus aka HappIfeeT                //
//             - http://www.eusares.fr -              //
//            Ecole et Centre d'instruction           //
////////////////////////////////////////////////////////

class ECI
{
	class presentation 
	{
		class announceLevelBegin {};
		class announceLevelEnd {};
		class announceRoundBegin {};
		class announceRoundEnd {};
	};
	class aimngt
	{
		class setSkill {description = "Define unit skill array";};
		class housesOccupation {description = "Militarize nearest houses";};
		class vehiclePatrol {description = "Spawn vehicle and move along waypoints";};
	};
	class arrays
	{
		class arrayInvert {description = "Inverts indexes of an array";};
	};
};