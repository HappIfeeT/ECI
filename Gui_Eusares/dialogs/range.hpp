////////////////////////////////////////////////////////
//                  2015 Arma 3                       //
//           	 Vetulus aka HappIfeeT                //
//                      GhOsT                         //
//            Ecole et Centre d'instruction           //
////////////////////////////////////////////////////////
class  DlgECIRange {
	idd = RNG_IDD;
	name = "RangeStartup";
	objects[] = {};
	controlsBackground[] = {};
	controls[] = {range};
	onLoad = "(_this select 0) call ECI_RNG_IN;";
	movingEnable = 1;
	class range : leftDiv {
		idc = RNG_IDC_range;
		x = LEFTDIV_X + (LEFTDIV_W * 0.1) ;
		moving = 1;
		class Controls {
			class bg : Menu_CQB_BG {
			x = 0;
			y = 0;
			w = LEFTDIV_W;
			h = LEFTDIV_H ;
			};
			class TitreStand : ECIText2 {
			idc = RNG_IDC_Stand;
			font = "TahomaB";
			x = LEFTDIV_W * 0.182 + LEFTDIV_W * 0.2925; 
			y = LEFTDIV_H * 0.31 -  LEFTDIV_H * 0.05;
			w = LEFTDIV_W * 0.3;
			h = LEFTDIV_H * 0.05;
			size = TEXT_SIZE_NORMAL ;
			colortext[ ] = ECI_COLOR_RGB_BLACK;
			text = "Stand ";
			};	
			class TitreNiveau : ECIText {
			font = "TahomaB";
			x = LEFTDIV_W * 0.182; 
			y = LEFTDIV_H * 0.31  ;
			w = LEFTDIV_W * 0.1;
			h = LEFTDIV_H * 0.025;
			size = TEXT_SIZE_NORMAL ;
			colortext[ ] = ECI_COLOR_RGB_BLACK;
			text = "Exercices :";
			};			
			class levels : ECIListBox {
			idc = RNG_IDC_levels;
			x = LEFTDIV_W * 0.182; 
			y = LEFTDIV_H * 0.31 + LEFTDIV_H * 0.025;
			w = LEFTDIV_W * 0.29;
			h = LEFTDIV_H * 0.3;
			size = TEXT_SIZE_NORMAL * 3;
			font = "TahomaB";
			colortext[ ] = ECI_COLOR_RGB_BLACK;
			onLBSelChanged = "_this call ECI_RNG_selectLevel";
			};
			class TitreModule : ECIText {
			x = LEFTDIV_W * 0.182; 
			y = LEFTDIV_H * 0.31 + LEFTDIV_H * 0.3 + LEFTDIV_H * 0.025;
			w = LEFTDIV_W * 0.15;
			h = LEFTDIV_H * 0.025;
			size = TEXT_SIZE_NORMAL * 0.8;
			font = "TahomaB";
			colortext[ ] = ECI_COLOR_RGB_BLACK;
			text = "Affichage Modules : ";
			};	
			class types : ECIListBox {
			idc = RNG_IDC_type;
			x = LEFTDIV_W * 0.182; 
			y = LEFTDIV_H * 0.31 + LEFTDIV_H * 0.3 + LEFTDIV_H * 0.05;
			w = LEFTDIV_W * 0.29;
			h = LEFTDIV_H * 0.075;
			colorBackground[] = {0,0,0,0.25};
			font = "TahomaB";
			size = TEXT_SIZE_NORMAL * 6;
			colortext[ ] = ECI_COLOR_RGB_BLACK;
			onLBSelChanged = "_this call ECI_RNG_selectType";
			};
			class imagestand6 : ECI_Image_standx6 {
			idc = RNG_IDC_image_standx6;
			x =  LEFTDIV_W * 0.182 + LEFTDIV_W * 0.291 ;//+ LEFTDIV_W * 0.025
			y = LEFTDIV_H * 0.31 + LEFTDIV_H * 0.001;
			w = LEFTDIV_W * 0.165;
			h = LEFTDIV_H * 0.15;
			};
			class imagemodule : ECI_Image_standx6 {
			idc = RNG_IDC_image_module;
			x =  LEFTDIV_W * 0.182 + LEFTDIV_W * 0.291 + LEFTDIV_W * 0.17;//
			y = LEFTDIV_H * 0.31 + LEFTDIV_H * 0.001;
			w = LEFTDIV_W * 0.15;
			h = LEFTDIV_H * 0.15;
			};			
			class DescriptionEx : StructuredText {
				idc = RNG_IDC_description;
				x = LEFTDIV_W * 0.182 + LEFTDIV_W * 0.291 ;
				y = LEFTDIV_H * 0.31 + LEFTDIV_H * 0.153;
				w = LEFTDIV_W * 0.325;
				h = LEFTDIV_H * 0.25;
				//size = TEXT_SIZE_NORMAL;
			};
			class start : ECIButton {
			idc = RNG_IDC_start;
			x = LEFTDIV_W * 0.44 + LEFTDIV_W * 0.2 - LEFTDIV_W * 0.156 + LEFTDIV_W * 0.105 + LEFTDIV_W * 0.04;
			y = (LEFTDIV_H * 0.36) + (LEFTDIV_H * 0.35) + LEFTDIV_H * 0.065;
			w = LEFTDIV_W * 0.162;
			h = LEFTDIV_H * 0.05;
			colortext[ ]= ECI_COLOR_RGB_BLACK;
			size = TEXT_SIZE_NORMAL * 0.8;
			colorBackground[] = ECI_COLOR_RGB_GREENSOMBRE;
			colorBackgroundActive[] = ECI_COLOR_RGB_GREEN ;
			colorFocused[] = ECI_COLOR_RGB_GREEN ;
			text = "Exec";
			action = "call ECI_RNG_start;";
			};
			class clear : ECIButton {
			idc = RNG_IDC_clear;
			x =  LEFTDIV_W * 0.44 + LEFTDIV_W * 0.225;
			y = (LEFTDIV_H * 0.36) + (LEFTDIV_H * 0.493);
			w = LEFTDIV_W * 0.15 - LEFTDIV_W * 0.025;
			h = LEFTDIV_H * 0.05;
			colortext[ ]= ECI_COLOR_RGB_BLACK;
			size = TEXT_SIZE_NORMAL;
			text = "STOP";
			action = "call ECI_RNG_EffaceEncours;";
			colorBackground[] = ECI_COLOR_RGB_REDSOMBRE;
			colorBackgroundActive[] = ECI_COLOR_RGB_RED;
			colorFocused[] = ECI_COLOR_RGB_RED;
			};
			class JourButton : ECIButton {
			idc = ECI_IDC_Jour;
			x =  (LEFTDIV_W * 0.44) + (LEFTDIV_W * 0.2);
			y = (LEFTDIV_H * 0.36) + (LEFTDIV_H * 0.35)  ;
			w = LEFTDIV_W * 0.075;
			h = LEFTDIV_H * 0.05;
			colortext[ ]= ECI_COLOR_RGB_BLANC;
			size = TEXT_SIZE_NORMAL;
			text = "JOUR";
			action = "call ECI_RNG_Jour;";
			};
			class NuitButton : ECIButton {
			idc = ECI_IDC_Nuit;
			x =  (LEFTDIV_W * 0.44) + (LEFTDIV_W * 0.2) + (LEFTDIV_W * 0.0751);
			y = (LEFTDIV_H * 0.36) + (LEFTDIV_H * 0.35)  ;
			w = LEFTDIV_W * 0.075;
			h = LEFTDIV_H * 0.05;
			colortext[ ]= ECI_COLOR_RGB_BLANC;
			size = TEXT_SIZE_NORMAL;
			text = "NUIT";
			action = "call ECI_RNG_Nuit;";
			};
			class exit : ECI_EXIT_Button {
			idc = RNG_IDC_exit;
			x =  LEFTDIV_W * 0.44 + LEFTDIV_W * 0.31;
			y = (LEFTDIV_H * 0.24) 
			w = LEFTDIV_W * 0.045;
			h = LEFTDIV_H * 0.05;
			colortext[ ]= {};
			size = TEXT_SIZE_NORMAL;
			text = "";
			action = "closeDialog 0;";
			};
			class ElimCQB : ECIText2 {
			idc = RNG_IDC_ElimCQB;
			x =  LEFTDIV_W * 0.44 + LEFTDIV_W * 0.2 - LEFTDIV_W * 0.156;
			y = (LEFTDIV_H * 0.36) + (LEFTDIV_H * 0.35)  ;
			w = LEFTDIV_W * 0.15;
			h = LEFTDIV_H * 0.05;
			size = TEXT_SIZE_NORMAL*0.6;
			font = "PuristaBold";
			colortext[ ] = ECI_COLOR_RGB_BLACK;
			text = "Neutralisés : "; 
			};
			class blesseCQB : ECIText2 {
			idc = RNG_IDC_blesseCQB;
			x =  LEFTDIV_W * 0.44 + LEFTDIV_W * 0.2 - LEFTDIV_W * 0.156;
			y = (LEFTDIV_H * 0.36) + (LEFTDIV_H * 0.375)  ;
			w = LEFTDIV_W * 0.15;
			h = LEFTDIV_H * 0.05;
			size = TEXT_SIZE_NORMAL*0.6 ;
			font = "PuristaBold";
			colortext[ ] = ECI_COLOR_RGB_BLACK;
			text = "blessés : ";
			};
			class civilCQB : ECIText2 {
			idc = RNG_IDC_civilCQB;
			x =  LEFTDIV_W * 0.44 + LEFTDIV_W * 0.2 - LEFTDIV_W * 0.156;
			y = (LEFTDIV_H * 0.36) + (LEFTDIV_H * 0.4)  ;
			w = LEFTDIV_W * 0.15;
			h = LEFTDIV_H * 0.05;
			size = TEXT_SIZE_NORMAL*0.6 ;
			font = "PuristaBold";
			colortext[ ] = ECI_COLOR_RGB_BLACK;
			text = "civil blessé : ";
			};
			class DureeexoCQB : ECIText2 {
			idc = RNG_IDC_DureeexoCQB;
			x =  LEFTDIV_W * 0.44 + LEFTDIV_W * 0.2 - LEFTDIV_W * 0.156;
			y = (LEFTDIV_H * 0.36) + (LEFTDIV_H * 0.425)  ;
			w = LEFTDIV_W * 0.15;
			h = LEFTDIV_H * 0.05;
			size = TEXT_SIZE_NORMAL*0.6 ;
			font = "PuristaBold";
			colortext[ ] = ECI_COLOR_RGB_BLACK;
			text = "temps : ";			
			};
			class EncoursCQB : ECIText2 {
			idc = RNG_IDC_EncoursCQB;
			x = LEFTDIV_W * 0.44 + LEFTDIV_W * 0.2 - LEFTDIV_W * 0.156;//LEFTDIV_W * 0.19;
			y = (LEFTDIV_H * 0.36) + (LEFTDIV_H * 0.5);
			w = LEFTDIV_W * 0.15;
			h = LEFTDIV_H * 0.05;
			size = TEXT_SIZE_NORMAL*0.8 ;
			font = "PuristaBold";
			colortext[ ] = ECI_COLOR_RGB_BLACK;
			text = " ";	
			};
			class TitleEx : ECIText2 {
			idc = RNG_IDC_TitleLevel;
			x = LEFTDIV_W * 0.44 + LEFTDIV_W * 0.2 - LEFTDIV_W * 0.156;
			y = (LEFTDIV_H * 0.36) + (LEFTDIV_H * 0.475);
			w = LEFTDIV_W * 0.3;
			h = LEFTDIV_H * 0.05;
			size = TEXT_SIZE_NORMAL   ;
			font = "PuristaBold";
			colortext[ ] = ECI_COLOR_RGB_BLACK;
			text = " ";	
			};
	   };
	};
};	
