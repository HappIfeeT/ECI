////////////////////////////////////////////////////////
//                  2015 Arma 3                       //
//           	 Vetulus aka HappIfeeT                //
//             - http://www.eusares.fr -              //
//            Ecole et Centre d'instruction           //
////////////////////////////////////////////////////////

class CqbStand: Module
{
	name = "CQB";
	sites[] = {"CQB1","CQB2","CQB3"};
	class CQB1: Site
	{
		id = 900;
		name = "CQB";
		title = "------CQB-DE-BASE------";
		levels[] = {"Level0","level1","level2","level3","level4","level5"};
		exotypes[] = {"module1","module2"};
		idstand = 0;
		startScript = "standCqb\CQB1\userAction.sqf";
		clearScript = "HappI_fnc_endServerCqb1";
		class Level0: Level
		{
			id = 900;
			name = "6Piéces";
			description = "STR_ECI_DLG_User_CQB_CQB1_Level0";
			image = 0 ;
			startArgs[] = {0};
			clearArgs[] = {0};
		};	
		class Level1: Level
		{
			id = 901;
			name = "6Piéces\ennemis";
			description = "STR_ECI_DLG_User_CQB_CQB1_Level1";
			image =   1;
			startArgs[] = {1};
			clearArgs[] = {1};
		};	
		class Level2: Level
		{
			id = 902;
			name = "6Piéces\ennemis\otages";
			description = "STR_ECI_DLG_User_CQB_CQB1_Level2";
			image =   2;
			startArgs[] = {2};
			clearArgs[] = {2};
		};	
		class Level3: Level
		{
			id = 903;
			name = "Banque";
			description = "STR_ECI_DLG_User_CQB_CQB1_Level3";
			image =  3;
			startArgs[] = {3};
			clearArgs[] = {3};
		};
		class Level4: Level
		{
			id = 904;
			name = "Banque\ennemis";
			description = "STR_ECI_DLG_User_CQB_CQB1_Level4";
			image =   4;
			startArgs[] = {4};
			clearArgs[] = {4};
		};
		class Level5: Level
		{
			id = 905;
			name = "Banque\ennemis\otages";
			description = "STR_ECI_DLG_User_CQB_CQB1_Level5";
			image =  5;
			startArgs[] = {5};
			clearArgs[] = {5};
		};
	class CQB1_exo: type_exo_GEN
	{
		id = 950;
		name = "CQB Type Groupe";
		title = "Combat Urbain groupe";

		class module1: type_exo_det
		{
			id = 950;
			name = "CQB module1 : Binôme";
			image = 0;
		};	
		class module2: type_exo_det
		{
			id = 951;
			name = "CQB module2 : Quadrinôme";
			image = 1;
		};	

	};		
	};
	
	class CQB2: Site
	{	
		id = 1000;
		idstand = 1;
		name = "CQB";
		title = "------TOC-TOC-------";
		levels[] = {"Level0","level1"};
		exotypes[] = {"module3","module4","module5"};
		startScript = "standCqb\CQB2\userAction.sqf";
		clearScript = "HappI_fnc_endServerCqb2";
		class Level0: Level
		{
			id = 1000;
			name = "Ennemis";
			description = "STR_ECI_DLG_User_CQB_CQB2_Level0";
			image = 0 ;
			startArgs[] = {0};
			clearArgs[] = {0};
		};	
		class Level1: Level
		{
			id = 1001;
			name = "Ennemis\Otages";
			description = "STR_ECI_DLG_User_CQB_CQB2_Level1";
			image = 1;
			startArgs[] = {1};
			clearArgs[] = {1};
		};
	class CQB2_exo: type_exo_GEN
	{
		id = 1050;
		name = "CQB Type Groupe";
		title = "Combat Urbain groupe";
		class module3: type_exo_det
		{
			id = 1050;
			name = "CQB module3 : Binôme";
			image = 0;
		};	
		class module4: type_exo_det
		{
			id = 1051;
			name = "CQB module4 : Quadrinôme";
			image = 1;
		};
		class module5: type_exo_det
		{
			id = 1052;
			name = "CQB module5 : Nuit";
			image = 2;
		};			
	};
	};
	
	class CQB3: Site
	{	
		id = 2000;
		idstand = 2;
		name = "CQB";
		title = "------BOULEVARD-DE-LA-MORT-------";
		levels[] = {"Level0","level1","level2","level3","level4","level5"};
		exotypes[] = {"module6","module7","module8"};
		startScript = "standCqb\CQB3\userAction.sqf";
		clearScript = "HappI_fnc_endServerCqb3";
		class Level0: Level
		{
			id = 2000;
			name = "Cote_droit\Ennemis";
			description = "STR_ECI_DLG_User_CQB_CQB3_Level0";
			image = 0 ;
			startArgs[] = {0};
			clearArgs[] = {0};
		};	
		class Level1: Level
		{
			id = 2001;
			name = "Cote_droit\Ennemis\Otages";
			description = "STR_ECI_DLG_User_CQB_CQB3_Level1";
			image = 1;
			startArgs[] = {1};
			clearArgs[] = {1};
		};
		class Level2: Level
		{
			id = 2001;
			name = "Cote_gauche\Ennemis";
			description = "STR_ECI_DLG_User_CQB_CQB3_Level2";
			image = 2;
			startArgs[] = {2};
			clearArgs[] = {2};
		};
		class Level3: Level
		{
			id = 2003;
			name = "Cote_gauche\Ennemis\Otages";
			description = "STR_ECI_DLG_User_CQB_CQB3_Level3";
			image = 3;
			startArgs[] = {3};
			clearArgs[] = {3};
		};
		class Level4: Level
		{
			id = 2004;
			name = "Complet\Ennemis";
			description = "STR_ECI_DLG_User_CQB_CQB3_Level4";
			image = 4;
			startArgs[] = {4};
			clearArgs[] = {4};
		};
		class Level5: Level
		{
			id = 2005;
			name = "Complet\Ennemis\Otages";
			description = "STR_ECI_DLG_User_CQB_CQB3_Level5";
			image = 5;
			startArgs[] = {5};
			clearArgs[] = {5};
		};
	class CQB3_exo: type_exo_GEN
	{
		id = 2000;
		name = "CQB Type Groupe";
		title = "Combat Urbain groupe";

		class module6: type_exo_det
		{
			id = 2001;
			name = "CQB module urbain 1 : Droite";
			image = 0;
		};	
		class module7: type_exo_det
		{
			id = 2002;
			name = "CQB module urbain 2 : Gauche";
			image = 1;
		};
		class module8: type_exo_det
		{
			id = 2003;
			name = "CQB module urbain 3 : Complet";
			image = 2;
		};			

	};
	};
		
};