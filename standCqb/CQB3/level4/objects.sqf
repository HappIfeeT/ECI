////////////////////////////////////////////////////////
//                      GhOsT                         //
//                  2015 Arma 3                       //
//           	 Vetulus aka HappIfeeT                //
//                      GhOsT                         //
//            Ecole et Centre d'instruction           //
////////////////////////////////////////////////////////
//STANDS CQB3 LHS strucures et déco
_objects = [
///1CARREFOUR
		[[15965.77832,16229.323242,7.82013e-005], 0, "Land_Mound01_8m_F", 0], 
		[[15978.561523,16256.438477,-0.506643], 45, "Land_City_4m_F", 0],
		[[15991.178711,16257.519531,-1.02602], 190,"Land_Cargo_HQ_V1_ruins_F", 0],
		//[[15999.142578,16256.758789,-0.0211391], 280, "Land_Canal_WallSmall_10m_F", 0], 
		[[15996.228516,16240.655273,-0.100746], 282,"Land_Canal_WallSmall_10m_F", 0], 
		[[15969.411133,16224.897461,-0.00339127],18.3459,"Land_Canal_WallSmall_10m_F", 0], 
		[[15968.294922,16234.09375,0],20,"Land_Canal_WallSmall_10m_F", 0],
		[[15973.0595703,16232.516602,-0.130003],20,"TapeSign_F", 0],
		[[15973.0595703,16232.516602,0.210005],20,"TapeSign_F", 0],
		
		[[15982.00878906,16259.419922,0.0215416],320,"Land_Canal_WallSmall_10m_F", 0],
		[[15996.642578,16244.0595703,3.31093],280,"Land_BagFence_Long_F", 0],
		[[15998.479492,16249.357422,3.39999],280,"Land_BagFence_Long_F", 0],
		[[15969.0078125,16256.514648,0.700197],310,"Land_BagFence_Long_F", 0], 
		[[15967.608398,16255.660156,0.900246],220,"Land_BagFence_Corner_F", 0], 		
  ///2CARREFOUR
		[[16025.270508,16199.646484,-0.000167847], 13, "Land_Canal_WallSmall_10m_F", 0],
		[[16014.49707,16213.00878906,-0.00152016], 8, "Land_Canal_WallSmall_10m_F", 0],
		[[16030.74707,16237.59375,-0.300005], 12, "Land_Canal_WallSmall_10m_F", 0],
		[[16038.942383,16239.286133,-0.000219345], 10, "Land_Canal_WallSmall_10m_F", 0],
///VERR MAISON
		[[15969.0244141,16265.967773,-0.440763], 43, "SignAd_Sponsor_F", 0], 
		[[15961.950195,16272.796875,-0.390036], 42.7268, "SignAd_Sponsor_F", 0], 
		[[15954.692383,16279.767578,-0.402559], 45, "SignAd_Sponsor_F", 0], 
		[[15947.589844,16286.629883,-0.498407], 45, "SignAd_Sponsor_F", 0],
		[[16052.126953,16245.483398,-0.522041], 12, "SignAd_Sponsor_F", 0],
		[[16061.873047,16243.418945,-0.512512], 11, "SignAd_Sponsor_F", 0],
		[[16071.5625,16241.304688,-0.43265], 11, "SignAd_Sponsor_F", 0],
		
		
		
		[[16012.794922,16247.167969,0.813923], 102, "TapeSign_F", 0],		
		[[16047.275391,16236.537109,0.201321], 11.7, "TapeSign_F", 0],			
		[[16057.0107422,16234.450195,0.201687], 11.1, "TapeSign_F", 0],	 
		[[16082.712891,16231.0136719,2.41792], 102, "TapeSign_F", 0], 
//VERR BAT 
		[[15959.745117,16238.464844,0.1], 207, "TapeSign_F", 0],
		[[15963.249023,16226.888672,-0.0307369], 17, "Land_Canal_WallSmall_10m_F", 0],
		[[15990.793945,16220.194336,-0.369213], 195, "SignAd_Sponsor_F", 0],
		[[15952.692383,16231.226563,-0.298382], 208, "SignAd_Sponsor_F", 0],
		[[15949.422852,16239.428711,0], 209, "SignAd_Sponsor_F", 0],
		[[15939.427734,16238.494141,-0.499435], 208, "SignAd_Sponsor_F", 0], 
		[[15975.0566406,16231.609375,-1.3], 16, "SignAd_Sponsor_F", 0],
		[[16005.869141,16216.196289,-0.992531], 15, "SignAd_Sponsor_F", 0],
		[[16005.869141,16216.196289,0], 15, "SignAd_Sponsor_F", 0],
		[[16008.0175781,16220.549805,0.000175476], 283, "SignAd_Sponsor_F", 0],
		[[16045.924805,16207.197266,-0.197205], 11, "SignAd_Sponsor_F", 0],		
		
////
	  	[[16029.651367,16240.880859,-0.302931], 12, "Land_Canal_WallSmall_10m_F", 0],
		[[16038.942383,16239.286133,-0.000219345], 10, "Land_Canal_WallSmall_10m_F", 0],
////ARRIVEE
		[[16099.68457,16218.500977,-0.135441], 102, "Land_FinishGate_01_wide_F", 0]
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
/*
switch (_x select 3) do {
	case 0 : {};
	case 1 : {
_object setobjecttextureglobal [0, _x select 4];
	};
};
*/
Cqb3Objects set [count Cqb3Objects, _object]; 
sleep 0.001;
} forEach _objects;