////////////////////////////////////////////////////////
//                      GhOsT                         //
//                  2015 Arma 3                       //
//           	 Vetulus aka HappIfeeT                //
//                      GhOsT                         //
//            Ecole et Centre d'instruction           //
////////////////////////////////////////////////////////
//STANDS CQB3 LHS strucures et déco
_objects = [
///COTE DROIT
		[[15944.863281,16246.367188,0.0943089], 206, "TapeSign_F", 0], 
		[[15956.351563,16246.758789,0.760002], 208, "TapeSign_F", 0],
		[[15959.763672,16238.506836,0.110003], 208, "TapeSign_F", 0],
		
		[[15981.273438,16229.625977,0.240007], 194, "TapeSign_F", 0],
		[[15996.113281,16225.692383,0.150274], 195, "TapeSign_F", 0],
		[[16035.955078,16216.0439453,0.190004], 192, "TapeSign_F", 0],
		[[16055.0849609,16212.336914,0.0365868], 190, "TapeSign_F", 0],
		[[16059.287109,16211.334961,0.310713], 190.407, "TapeSign_F", 0],
		[[15974.948242,16231.587891,0], 193, "TapeSign_F", 0],
		
 
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
 
///1CARREFOUR
		[[15965.77832,16229.323242,7.82013e-005], 0, "Land_Mound01_8m_F", 0], 
		[[15978.561523,16256.438477,-0.506643], 45, "Land_City_4m_F", 0],
		[[15991.178711,16257.519531,-1.02602], 190,"Land_Cargo_HQ_V1_ruins_F", 0],
		[[15999.142578,16256.758789,-0.0211391], 280, "Land_Canal_WallSmall_10m_F", 0], 
		//[[15996.228516,16240.655273,-0.100746], 282,"Land_Canal_WallSmall_10m_F", 0], 
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
	  	[[16029.651367,16240.880859,-0.302931], 12, "Land_Canal_WallSmall_10m_F", 0],
		[[16038.942383,16239.286133,-0.000219345], 10, "Land_Canal_WallSmall_10m_F", 0],
		[[16044.506836,16238.162109,0.099741], 10, "TapeSign_F", 0],

 ////FIN
		[[16081.132813,16222.306641,0.000339508], 280, "Land_Canal_WallSmall_10m_F", 0],
		[[16076.75,16214.65625,1.47486], 320, "Land_Canal_WallSmall_10m_F", 0],
		[[16073.72168,16207.155273,2.40292], 280, "Land_Canal_WallSmall_10m_F", 0],
		[[16080.803711,16239.18457,1.23038], 0, "Pole_F", 0],
		[[16081.917969,16238.984375,1.09477], 0, "Pole_F", 0]
 
 

 

 	
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