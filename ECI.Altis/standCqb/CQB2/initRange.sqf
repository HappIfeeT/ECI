////////////////////////////////////////////////////////
//                  2015 Arma 3                       //
//           	 Vetulus aka HappIfeeT                //
//             - http://www.eusares.fr -              //
//            Ecole et Centre d'instruction           //
////////////////////////////////////////////////////////
//InitRange Stand Cqb2
_objects = [
//////FENETRES
	[[15228.210938,17442.203125,0.2132], 316, "SignAd_Sponsor_F"],
	[[15226.289063,17440.28125,0.21575], 316, "SignAd_Sponsor_F"],
	[[15234.229492,17445.193359,0.153746], 316, "SignAd_Sponsor_F"],
	[[15236.411133,17447.292969,0.124006], 316, "SignAd_Sponsor_F"],
	[[15225.214844,17436.511719,0.1805], 315, "SignAd_Sponsor_F"],
	[[15223.0859375,17434.435547,0.157511], 315, "SignAd_Sponsor_F"],
	[[15220.896484,17432.322266,0.144236], 315, "SignAd_Sponsor_F"],
	[[15218.779297,17430.273438,0.131308], 315, "SignAd_Sponsor_F"],
	[[15239.411133,17447.0292969,0.0578918], 46, "SignAd_Sponsor_F"],
	[[15225.353516,17423.300781,-0.0458298],136, "SignAd_Sponsor_F"], 
	[[15229.662109,17427.521484,-0.0215111], 136, "SignAd_Sponsor_F"],
	[[15231.828125,17429.716797,-0.0211582], 136, "SignAd_Sponsor_F"],
	[[15234.226563,17431.916016,-0.0209961], 136, "SignAd_Sponsor_F"],
	[[15238.425781,17435.912109,-0.0296764], 136, "SignAd_Sponsor_F"],
	[[15240.923828,17438.339844,-0.0414333], 136, "SignAd_Sponsor_F"],
	[[15242.923828,17440.25,-0.0528164], 136, "SignAd_Sponsor_F"],
	[[15243.411133,17442.853516,-0.036932],  46, "SignAd_Sponsor_F"],
//////PORTES
	[[15236.186523,17433.935547,-0.646708],  315, "SignAd_Sponsor_F"],
	[[15227.373047,17425.423828,-0.65682],  315, "SignAd_Sponsor_F"],
	[[15220.77832,17425.455078,-0.706779],  45.9999, "SignAd_Sponsor_F"],
//////DEPART
	[[15230.805664,17444.921875,0.903502], 46.9999, "Pole_F"],
	[[15229.797852,17443.976563,0.905771], 46.9999, "Pole_F"],
	[[15227.046875,17447.587891,3.43323e-005], 316, "Land_Obstacle_Cross_F"], 
	[[15225.605469,17443.359375,5.53131e-005], 45, "Land_Obstacle_Cross_F"],
	[[15231.306641,17451.677734,4.76837e-005], 316, "Land_Obstacle_Cross_F"], 
  /////ARRIVEE
 	[[15217.370117,17425.892578,6.67572e-005], 315, "Land_Obstacle_Cross_F"], 
	[[15213.452148,17427.378906,6.86646e-005], 45.9999, "Land_Obstacle_Cross_F"],
	[[15214.282227,17430.660156,-0.00166702], 316, "Land_Obstacle_Cross_F"], 
	[[15216.512695,17430.732422,4.19617e-005], 44, "Land_Obstacle_Cross_F"],  
	[[15216.0283203,17427.447266,8.2016e-005], 0, "Pole_F"], 
	[[15217.271484,17428.384766,7.82013e-005], 0, "Pole_F"]
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





























