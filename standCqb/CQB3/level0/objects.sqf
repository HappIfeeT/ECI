////////////////////////////////////////////////////////
//                      GhOsT                         //
//                  2015 Arma 3                       //
//           	 Vetulus aka HappIfeeT                //
//                      GhOsT                         //
//            Ecole et Centre d'instruction           //
////////////////////////////////////////////////////////
//STANDS CQB3 RHS strucures et déco
_objects = [
///1BATs GAUCHE
		[[15953.0976563,16267.826172,-3.8147e-006], 42, "TapeSign_F", 0],
		[[15945.920898,16274.72168,0.228142], 43, "TapeSign_F", 0],
		[[15938.760742,16281.694336,0.141867], 43, "Land_arrows_desk_R", 0],
		[[15960.311523,16260.913086,0.0908604], 43, "Land_arrows_desk_R", 0],
///1CARREFOUR
		[[15965.77832,16229.323242,7.82013e-005], 0, "Land_Mound01_8m_F", 0], 
		[[15978.561523,16256.438477,-0.506643], 45, "Land_City_4m_F", 0],
		[[15991.178711,16257.519531,-1.02602], 190,"Land_Cargo_HQ_V1_ruins_F", 0],
		[[15999.142578,16256.758789,-0.0211391], 280, "Land_Canal_WallSmall_10m_F", 0], 
		[[15996.228516,16240.655273,-0.100746], 282,"Land_Canal_WallSmall_10m_F", 0], 
		[[15969.411133,16224.897461,-0.00339127],18.3459,"Land_Canal_WallSmall_10m_F", 0], 
		[[15968.294922,16234.09375,0],20,"Land_Canal_WallSmall_10m_F", 0],
		[[15973.0595703,16232.516602,-0.130003],20,"TapeSign_F", 0],
		[[15973.0595703,16232.516602,0.210005],20,"TapeSign_F", 0],
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


//2BATs GAUCHE
		[[16009.99707,16240.112305,0.400013], 10, "TapeSign_F", 0],
		[[16011.720703,16239.700195,0.404718], 9.99996, "TapeSign_F", 0],
		[[16017.875,16238.318359,-0.0553322], 81.9997, "Land_UWreck_Heli_Attack_02_F", 0],
		[[16047.28418,16236.523438,0.0212708], 11, "TapeSign_F", 0],
		[[16057.0126953,16234.470703,0.00150681], 13, "TapeSign_F", 0],
		[[16066.722656,16232.40332,0.378407], 12, "TapeSign_F", 0],
		[[16076.43457,16230.385742,0.740749], 10, "TapeSign_F", 0],
///2CARREFOUR
		[[16025.270508,16199.646484,-0.000167847], 13, "Land_Canal_WallSmall_10m_F", 0],
		[[16014.49707,16213.00878906,-0.00152016], 8, "Land_Canal_WallSmall_10m_F", 0],
		[[16030.74707,16237.59375,-0.300005], 12, "Land_Canal_WallSmall_10m_F", 0],
		[[16038.942383,16239.286133,-0.000219345], 10, "Land_Canal_WallSmall_10m_F", 0],
		[[16013.789063,16233.911133,-0.362253], 90, "TapeSign_F", 0],
		[[16014.0986328,16229.894531,-0.499754], 110, "TapeSign_F", 0],
///EXT MAISON 1ETAGE
		[[16052.657227,16200.594727,-0.0650082], 10, "TapeSign_F", 0],
		[[16051.118164,16202.389648,-0.118492], 90, "TapeSign_F", 0],
		[[16054.682617,16201.75293,-0.114067], 290, "TapeSign_F", 0],
		[[16050.605469,16204.194336,0.5],193, "Land_Icebox_F" , 0],
		[[16055.128906,16202.425781,-0.0385303],99.9999, "Land_City2_4m_F" , 0],
//FINAL WALL
		[[16063.0166016,16214.826172,1.1763], 280,"Land_Concrete_SmallWall_8m_F" , 0], 
		[[16064.40332,16222.708984,1.16354],  280,"Land_Concrete_SmallWall_8m_F" , 0], 
		[[16065.916016,16228.375977,-0.198952], 100, "TapeSign_F", 0], 
		[[16062.563477,16214.451172,-0.199699], 100, "TapeSign_F", 0], 
		[[16070.482422,16203.796875,-0.0991249],100, "TapeSign_F", 0],
		[[16069.629883,16199.386719,0.0156631], 0, "Pole_F", 0],
		[[16067.831055,16199.713867,0.00041008], 0, "Pole_F", 0]
 
		
 	
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