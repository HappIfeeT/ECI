////////////////////////////////////////////////////////
//                  2015 Arma 3                       //
//           	 Vetulus aka HappIfeeT                //
//                      GhOsT                         //
//            Ecole et Centre d'instruction           //
////////////////////////////////////////////////////////
//InitRange CqbStand
_objects = [
		[[14233.655273,16288.424805,0.00923538], 323, "Land_HBarrierBig_F"],
		[[14241.897461,16294.944336,-0.00357628], 324, "Land_HBarrierBig_F"],
		[[14239.416016,16295.536133,-0.000610352], 320, "Land_HBarrier_1_F"],
		[[14239.399414,16295.521484,1.35219], 318.94, "Land_HBarrier_1_F"],
		[[14234.892578,16292.0283203,-0.000133514], 320, "Land_HBarrier_1_F"],
		[[14241.987305,16298.854492,0.00163651], 318, "Land_Obstacle_Cross_F"],
		[[14244.25,16300.955078,0.000520706], 316, "Land_Obstacle_Cross_F"],
		[[14241.274414,16295.657227,0.00222588], 48.1999, "VR_Area_01_square_4x4_yellow_F"],
		//[[14233.0244141,16289.419922,-0.204453], 139, "Land_arrows_desk_R"], 
		//[[14226.958008,16285.0126953,-0.190407], 226, "Land_arrows_desk_L"],
		[[14242.0351563,16291.429688,0.807724], 340, "Land_Notepad_F"],
		[[14242.0927734,16291.601563,0.806173], 219.9, "Land_MobilePhone_smart_F"],
		[[14242.0761719,16291.431641,0.815922], 0, "Land_PenRed_F"],
		[[14241.341797,16292.805664,0.00501251], 320, "Land_FireExtinguisher_F"],
		[[14241.0185547,16292.667969,5.72205e-006], 110, "Land_FireExtinguisher_F"],
		[[14242.870117,16292.399414,0.000110626], 320, "Land_PCSet_01_case_F"],
		[[14244.201172,16293.551758,0.000659943], 321.1, "Land_PCSet_01_case_F"], 
		[[14242.898438,16292.387695,0.498602], 1.5, "Land_PCSet_01_keyboard_F"],
		[[14242.986328,16292.24707,0.806461], 0, "Land_PCSet_01_mouse_F"],
		[[14244.201172,16293.551758,0.806461], 340, "Land_PCSet_01_mouse_F"], 
		//[[14244.758789,16301.527344,-0.619997], 314, "Land_arrows_desk_L"],
		//[[14243.834961,16300.588867,-0.619944], 315, "Land_arrows_desk_L"],

		[[14243.820313,16292.401367,0.0153008], 320, "Land_TouristShelter_01_F"],
		[[14241.632813,16292.0615234,0.804819], 60, "Land_File2_F"],
		[[14241.617188,16292.0683594,0.817692], 40, "Land_File2_F"],
		[[14241.616211,16292.0654297,0.830849], 70, "Land_File2_F"],
		[[14246.445313,16300.668945,-0.000684738], 50, "Land_Obstacle_Cross_F"],
		[[14248.635742,16298.0517578,-0.000518799], 49.9999, "Land_Obstacle_Cross_F"],
		[[14244.453125,16295.266602,0.000236511], 320, "Land_WaterCooler_01_new_F"],
		[[14244.223633,16295.0625,8.7738e-005], 320, "Land_WaterCooler_01_new_F"],
		[[14248.657227,16295.228516,-0.000226974], 302, "Land_Obstacle_Cross_F"],
		[[14239.618164,16295.59375,-0.543201], 230, "Land_Shoot_House_Corner_Stand_F"],
		/////enclos
		[[14248.768555,16291.248047,0.00106621], 319, "Land_Obstacle_Cross_F"],
		[[14245.481445,16288.387695,-0.00138474], 319, "Land_Obstacle_Cross_F"],
		[[14243.149414,16286.363281,0.000335693], 319, "Land_Obstacle_Cross_F"],
		[[14240.942383,16286.733398,0.00239563], 52, "Land_Obstacle_Cross_F"],
		[[14241.230469,16288.606445,0.0314541], 140, "PlasticBarrier_03_orange_F"],
		[[14238.106445,16288.412109,7.62939e-006], 50, "Land_Obstacle_Cross_F"],
		[[14242.231445,16287.998047,0.0141125], 52, "Land_PalletTrolley_01_yellow_F"],
		/////depart
		[[14242.148438,16297.685547,0.000900269], 315, "Metal_Pole_Skeet_F"],
		[[14242.0791016,16297.515625,0.00105476], 130, "Metal_Pole_Skeet_F"],
		[[14241.492188,16298.34082,-0.488646], 50, "Pole_F"],
		[[14242.791016,16296.920898,-0.500042], 308, "Pole_F"],
		/////cartouches au sol
		/*
		[[14242.691406,16286.607422,0], 0, "FxCartridge_556"],
		[[14242.737305,16286.616211,0], 290, "FxCartridge_556"], 
		[[14242.547852,16286.547852,0], 50, "FxCartridge_556"],
		[[14242.623047,16286.520508,0], 0, "FxCartridge_556"], 
		[[14242.645508,16286.597656,0], 140, "FxCartridge_556"],
		[[14241.869141,16286.792969,0], 0, "FxCartridge_556"],
		[[14242.09375,16286.386719,0], 70, "FxCartridge_556"], 
		[[14242.554688,16286.703125,0.193], 0, "FxCartridge_556"],
		[[14242.496094,16286.625,0.193], 30, "FxCartridge_556"],		
		[[14243.0917969,16286.953125,0], 0, "FxCartridge_9mm"], 
		[[14242.62207,16286.791016,0.193003], 280, "FxCartridge_9mm"],
		[[14242.397461,16286.40332,0], 0, "FxCartridge_9mm"],
		[[14242.705078,16286.510742,0], 220, "FxCartridge_9mm"],
		[[14242.952148,16286.59668,0], 300, "FxCartridge_9mm"],
		[[14242.584961,16286.303711,0], 120, "FxCartridge_9mm"],
		[[14242.425781,16286.157227,0], 260, "FxCartridge_9mm"],
		
		/////fleches entrée
		[[14249.399414,16297.195313,-0.580011], 49.9999, "Land_arrows_yellow_L"],
		[[14248.692383,16298.03125,-0.57778], 49.9999, "Land_arrows_yellow_L"],
		[[14247.954102,16298.927734,-0.575392], 49.9999, "Land_arrows_yellow_L"],
		*/
		
		
		
		/////Transfo Anti Troll Darylz
		[[14248.80957,16300.0830078,-0.000150681], 140, "Land_spp_Transformer_F"],
		[[14247.491211,16304.200195,-0.00215721], 144.999, "Land_PowerGenerator_F"],
		[[14248.466797,16304.861328,-0.000202179], 145.7, "Land_PowerGenerator_F"],
		[[14251.576172,16298.875977,-0.00609779], 0, "Land_Bucket_clean_F"],
		[[14250.401367,16301.330078,-0.000494003], 10, "Land_WeldingTrolley_01_F"],
		//[[14240.894531,16286.901367,-0.560476], 52, "Land_arrows_desk_R"],
		[[14238.915039,16287.507813,-2.19166], 51.9999, "Land_Sign_WarningUnexplodedAmmo_F"]
		//[[14238.232422,16288.374023,-0.58], 50, "Land_arrows_desk_R"],
		//[[14243.0898438,16286.431641,-0.609999], 320, "Land_arrows_desk_R"],
		//[[14245.384766,16288.416016,-0.599998], 320, "Land_arrows_desk_R"],
		//[[14248.729492,16291.329102,-0.600002], 320, "Land_arrows_desk_L"],
		//[[14248.564453,16295.231445,-0.599998], 302, "Land_arrows_desk_L"]
 














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
cqb1Objects set [count cqb1Objects, _object]; 
sleep 0.001;
} forEach _objects;
//////photos retexturées
_pos = [14242.645508,16289.611328,1.60488];
_object = createVehicle ["Land_Photos_V2_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 139.993;
_object setPosATL _pos;
[_object, 90, -90] call BIS_fnc_setPitchBank;
deleteVehicle _object;
_object = createVehicle ["Land_Photos_V2_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 139.993;
_object setPosATL _pos;
[_object, 90, -90] call BIS_fnc_setPitchBank;
_object enablesimulation false;
_object allowDamage false;
_object  setobjecttextureglobal [0, "data\stands\Cqb1\PosterCqb.paa"]; 
 sleep 0.001;
 
_pos = [14242.37207,16289.933594,1.60754];
_object = createVehicle ["Land_Photos_V2_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 139.993;
_object setPosATL _pos;
[_object, 87, -90] call BIS_fnc_setPitchBank;
deleteVehicle _object;
_object = createVehicle ["Land_Photos_V2_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 139.993;
_object setPosATL _pos;
[_object, 87, -90] call BIS_fnc_setPitchBank;
_object enablesimulation false;
_object allowDamage false;
_object  setobjecttextureglobal [0, "data\stands\Cqb1\poss.paa"]; 
sleep 0.001;
  
_pos = [14242.655273,16289.604492,1.14647];
_object = createVehicle ["Land_Photos_V2_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 319.993;
_object setPosATL _pos;
[_object, 89.1, 90] call BIS_fnc_setPitchBank;
deleteVehicle _object;
_object = createVehicle ["Land_Photos_V2_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 319.993;
_object setPosATL _pos;
[_object, 89.1, 90] call BIS_fnc_setPitchBank;
_object enablesimulation false;
_object allowDamage false;
_object  setobjecttextureglobal [0, "data\pictures\PC\CQB\CQB1\vide6.paa"];
 sleep 0.001;
  
_pos = [14242.37207,16289.933594,1.35102];
_object = createVehicle ["Land_Photos_V2_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 139.993;
_object setPosATL _pos;
[_object, 89.9, -90] call BIS_fnc_setPitchBank;
deleteVehicle _object;
_pos = [14242.37207,16289.933594,1.35102];
_object = createVehicle ["Land_Photos_V2_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 139.993;
_object setPosATL _pos;
[_object, 89.9, -90] call BIS_fnc_setPitchBank;
_object enablesimulation false;
_object allowDamage false;
_object  setobjecttextureglobal [0, "data\pictures\PC\CQB\CQB1\banque.paa"]; 
sleep 0.001;
 
_pos = [14242.375977,16289.926758,1.06091];
_object = createVehicle ["Land_Photos_V2_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 319.993;
_object setPosATL _pos;
[_object, 87.1, 90] call BIS_fnc_setPitchBank;
deleteVehicle _object;
_object = createVehicle ["Land_Photos_V2_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 319.993;
_object setPosATL _pos;
[_object, 89.1, 90] call BIS_fnc_setPitchBank;
_object enablesimulation false;
_object allowDamage false;
_object  setobjecttextureglobal [0, "data\pictures\pub.paa"]; 
sleep 0.001;
  
_pos = [14242.626953,16289.634766,1.38378];
_object = createVehicle ["Land_Photos_V2_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 319.993;
_object setPosATL _pos;
[_object, 90.1, 90] call BIS_fnc_setPitchBank;
deleteVehicle _object;
_object = createVehicle ["Land_Photos_V2_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 319.993;
_object setPosATL _pos;
[_object, 90.1, 90] call BIS_fnc_setPitchBank;
_object enablesimulation false;
_object allowDamage false;
_object  setobjecttextureglobal [0, "data\pictures\plaque_eusares.paa"]; 
sleep 0.001;
 
_pos = [14242.655273,16289.604492,0.892736];
_object = createVehicle ["Land_Photos_V2_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 319.993;
_object setPosATL _pos;
[_object, 89.1, 90] call BIS_fnc_setPitchBank;
deleteVehicle _object;
_object = createVehicle ["Land_Photos_V2_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 319.993;
_object setPosATL _pos;
[_object, 89.1, 90] call BIS_fnc_setPitchBank;
_object enablesimulation false;
_object allowDamage false;
_object  setobjecttextureglobal [0, "data\pictures\textures\franceflag.paa"];
sleep 0.001;
  
//Posters retexturés
_pos = [14242.623047,16293.44043,1.3117];
_object = createVehicle ["Land_Poster_02_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 319.9;
_object setPosATL _pos;
deleteVehicle _object;
_object = createVehicle ["Land_Poster_02_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 319.9;
_object setPosATL _pos;
_object enablesimulation false;
_object allowDamage false;
_object  setobjecttextureglobal [0, "data\stands\Cqb1\PosterCqb.paa"];

_pos = [14247.851563,16299.199219,1.36529];
_object = createVehicle ["Land_Poster_01_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 50;
_object setPosATL _pos;
deleteVehicle _object;
_object = createVehicle ["Land_Poster_02_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 50;
_object setPosATL _pos;
_object enablesimulation false;
_object allowDamage false;
_object  setobjecttextureglobal [0, "data\pictures\Posters\AccesCqb.paa"];
//Pitched
_pos = [14244.0498047,16293.427734,0.209179];
_object = createVehicle ["Land_PCSet_01_keyboard_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 329.2;
_object setPosATL _pos;
[_object, 0, -70] call BIS_fnc_setPitchBank;
deleteVehicle _object;
_object = createVehicle ["Land_PCSet_01_keyboard_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 329.2;
_object setPosATL _pos;
[_object, 0, -70] call BIS_fnc_setPitchBank;
_object enablesimulation false;
_object allowDamage false;
//Objets retexturés

_pos = [14250.71582,16297.512695,0.0112762];
_object = createVehicle ["SignAd_Sponsor_Vrana_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 320;
_object setPosATL _pos;
deleteVehicle _object;
_object = createVehicle ["SignAd_Sponsor_Vrana_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 320;
_object setPosATL _pos;
_object enablesimulation false;
_object allowDamage false;
_object  setobjecttextureglobal [0, "data\stands\Cqb1\PosterCqb.paa"];































