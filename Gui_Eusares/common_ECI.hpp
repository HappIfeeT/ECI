////////////////////////////////////////////////////////
//                  2015 Arma 3                       //
//           	 Vetulus aka HappIfeeT                //
//                      GhOsT                         //
//            Ecole et Centre d'instruction           //
////////////////////////////////////////////////////////
#define	ECI_COLOR_RGB_OLIVE			{0.1,0.16,0.08,0.8}
#define	ECI_COLOR_RGB_LIGHTOLIVE	{0.125,0.2,0.1,0.8}
#define	ECI_COLOR_RGB_RED			{0.99,0.05,0.04,1}
#define	ECI_COLOR_RGB_REDSOMBRE		{0.32,0.1,0.08,0.8}
#define	ECI_COLOR_RGB_LIGHTRED		{0.4,0.125,0.1,0.8}
#define	ECI_COLOR_RGB_GREEN			{0.11,0.69,0,1}
#define	ECI_COLOR_RGB_GREENSOMBRE	{0.05,0.29,0,1}
#define	ECI_COLOR_RGB_GRISCLAIR		{0.99,0.36,0.33,0}
#define	ECI_COLOR_RGB_GRISSOMBRE	{0,0,0,0.4}
#define	ECI_COLOR_RGB_BLANC			{1,1,1,1}
#define	ECI_COLOR_RGB_BLACK			{0,0,0,1}
//BASIC CONTROLS
class StructuredText {
		idc = -1;
		type = CT_STRUCTURED_TEXT;
		style = ST_LEFT;
		colorText[] = {0, 0, 0, 1};
		colorBackground[] = {0, 0, 0, 0.2};
		sizeEx = 0.015 * safezoneH;
	    size = 0.015 * safezoneH;
		text = "";
		lineSpacing = 1;
		class Attributes { 
			font = "TahomaB"; 
			color = "#000000"; 
			align = "left"; 
			valign = "middle"; 
			shadow = false; 
			size = "1"; 
		}; 
	};
class ECIText : RscText{
	colorText[ ]={0,0.26,0.2,1 };
	sizeEx = 0.015 * safezoneH;
	size = 0.015 * safezoneH; 
		};
class ECIText2 : RscText{
	colorText[ ]={0,0.26,0.2,1 };
	SizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
		};
class ECIPicture : RscPicture{};
class ECIStructuredText : RscStructuredText{};
class ECIFrame : RscFrame{};
class ECISlider : RscSlider{};
class ECICheckBox : RscCheckBox{};
class ECIControlsGroup : RscControlsGroup{
movingEnable = 1;};
class ECIBackGround : IGUIBack{};
class ECIScButton : RscShortcutButton{};
class ECIEdit : RscEdit{
	tooltipColorBox[] = {ECI_COLOR_RGB_LIGHTOLIVE};
	tooltipColorShade[] = {0,0,0,0.8};
};
class ECICombo : RscCombo{
	sizeEx = 0.02 * safezoneH;
	class ComboScrollBar {
		color[] = {1, 1, 1, 0.6};
		colorActive[] = {1, 1, 1, 1};
		colorDisabled[] = {1, 1, 1, 0.3};
		thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
		arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
		arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
		border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
	};
};
class ECI_Image_banque  {
        idc = -1;
        type = 0;
        style = 48;
        colorText[ ]={ 1,1,1,1 };
        colorBackground[ ]={ 0.4,0.4,0.4,1 };
        font = "PuristaMedium";
        sizeEx = 0.021;
        lineSpacing = 1;
        x = 0;
        y = 0;
        w = 0;
        h = 0;
        border = 0;
        text = "data\stands\Cqb1\banque.jpg";
    };
class ECI_Image_standx6  {
        idc = -1;
        type = 0;
        style = 48;
        colorText[ ]={ 1,1,1,1 };
        colorBackground[ ]={ 0.4,0.4,0.4,1 };
        font = "PuristaMedium";
        sizeEx = 0.021;
        lineSpacing = 1;
        x = 0;
        y = 0;
        w = 0;
        h = 0;
        border = 0;
        text = "data\stands\Cqb1\6x6.jpg";
    };
class CAM_BG {
        idc = -1;
        type = 0;
        style = 48;
        colorText[ ]={ 1,1,1,1 };
        colorBackground[ ]={ 0.4,0.4,0.4,1 };
        font = "PuristaMedium";
        sizeEx = 0.021;
        lineSpacing = 1;
        x = 0;
        y = 0;
        w = 0;
        h = 0;
        border = 0;
        text = "Gui_Eusares\UI\ace_huntir_monitor_on.jpg";
    };
class Menu_BG {
        idc = -1;
        type = 0;
        style = 48;
        colorText[ ]={ 1,1,1,1 };
        colorBackground[ ]={ 0.4,0.4,0.4,1 };
        font = "PuristaMedium";
        sizeEx = 0.021;
        lineSpacing = 1;
        x = 0;
        y = 0;
        w = 0;
        h = 0;
        border = 0;
        text = "Gui_Eusares\UI\ucp.jpg";
    };
class Menu_arsenal_BG {
        idc = -1;
        type = 0;
        style = 48;
        colorText[ ]={ 1,1,1,1 };
        colorBackground[ ]={ 0.4,0.4,0.4,1 };
        font = "PuristaMedium";
        sizeEx = 0.021;
        lineSpacing = 1;
        x = 0;
        y = 0;
        w = 0;
        h = 0;
        border = 0;
        text = "Gui_Eusares\UI\arsenal.jpg";
    };
class Menu_CQB_BG {
        idc = -1;
        type = 0;
        style = 48;
        colorText[ ]={ 1,1,1,1 };
        colorBackground[ ]={ 0.4,0.4,0.4,1 };
        font = "PuristaMedium";
        sizeEx = 0.021;
        lineSpacing = 1;
        x = 0;
        y = 0;
        w = 0;
        h = 0;
        border = 0;
        text = "Gui_Eusares\UI\ECICqb.jpg";
    };
class Window_BG {
        idc = -1;
        type = 0;
        style = 48;
        colorText[ ]={ 1,1,1,1 };
        colorBackground[ ]={ 0.4,0.4,0.4,1 };
        font = "PuristaMedium";
        sizeEx = 0.021;
        lineSpacing = 1;
        x = 0;
        y = 0;
        w = 0;
        h = 0;
        border = 0;
        text = "Gui_Eusares\UI\window.jpg";
    };
class Meteo_BG {
        idc = -1;
        type = 0;
        style = 48;
        colorText[ ]={ 1,1,1,1 };
        colorBackground[ ]={ 0.4,0.4,0.4,1 };
        font = "PuristaMedium";
        sizeEx = 0.021;
        lineSpacing = 1;
        x = 0;
        y = 0;
        w = 0;
        h = 0;
        border = 0;
        text = "Gui_Eusares\UI\interfacemeteo.jpg";
    };
class ECIListBox : RscListBox {
	colorSelectBackground[] = {0,0,0,0.3};
	colorSelectBackground2[] = {0,0,0,0.3};
	colorSelect[] = {1,1,1,1};
	colorSelect2[] = {1,1,1,1};
	shadow = 0;
	font = "TahomaB";
	colorShadow[] = {0,0,0,1};
	drawSideArrows = 0;
	sizeEx = 0.015 * safezoneH;

	class ListScrollBar {
		color[] = {1, 1, 1, 0.6};
		colorActive[] = {1, 1, 1, 1};
		colorDisabled[] = {1, 1, 1, 0.3};
		thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
		arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
		arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
		border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
		autoScrollEnabled = 1;
	};
};
class ECIButton : RscButton {
	colorBackground[] = ECI_COLOR_RGB_GRISCLAIR;
	colorBackgroundActive[] = ECI_COLOR_RGB_GRISSOMBRE;
	colorFocused[] = ECI_COLOR_RGB_GRISSOMBRE;
	colorBackgroundDisabled[] = {0.5,0.5,0.5,1};
	colorShadow[] = {0,0,0,0.7};
	sizeEx = 0.016 * safezoneH;
};
class ECI_EXIT_Button {
	type = 1 ;
	style = 0 ;
	access = 0;
	x = 0; y = 0; w = 0.3; h = 0.1;
	text = "";
	font = "TahomaB";
	colorText[] = {0,0,0,0};
	colorDisabled[] = {0,0,0,0};
	offsetX = 0.004;
	offsetY = 0.004;
	offsetPressedX = 0.002;
	offsetPressedY = 0.002;
	colorShadow[] = {0,0,0,0};
	shadow = 1;
	colorBorder[] = {0,0,0,0};
	borderSize = 0.008;
	soundEnter[] = {0,0,0,0};
	soundPush[] = {0,0,0,0};
	soundClick[] = {0,0,0,0};
	soundEscape[] = {0,0,0,0};
	colorBackground[] = {0,0,0,0};
	colorBackgroundActive[] = {0,0,0,0};
	colorFocused[] = {0,0,0,0};
	colorBackgroundDisabled[] = {0,0,0,0};
	sizeEx = 0.016 * safezoneH;
};
class ECIListNBox : ECIListBox {
	type = CT_LISTNBOX;
	font = "TahomaB";
	idcLeft = -1;
	idcRight = -1;
	drawSideArrows = 0;
	columns[] = {};
	
};
class ECIProgressBar {
	idc = -1;
	type = CT_XSLIDER;
	style = SL_HORZ;
	shadow = 2;
	color[] = {1, 1, 1, 0.6};
	colorActive[] = {1, 1, 1, 0.6};
	colorDisabled[] = {1, 1, 1, 0.6};
	arrowEmpty = "\A3\ui_f\data\gui\cfg\slider\arrowEmpty_ca.paa";
	arrowFull = "\A3\ui_f\data\gui\cfg\slider\arrowFull_ca.paa";
	border = "\A3\ui_f\data\gui\cfg\slider\border_ca.paa";
	thumb = "\A3\ui_f\data\gui\cfg\slider\thumb_ca.paa";
	text = "";
	onSliderPosChanged = "";
	tooltip = "";
};
class ECIActivePicture {
	idc = -1;
	type = CT_ACTIVETEXT;
	style = ST_PICTURE;
	x = 0;
	y = 0;
	w = 0;
	h = 0;
	text = "";
	font = "PuristaMedium";
	sizeEx = 0.016;
	url = "";
	action = "";
	default = false;
	blinkingPeriod = 1.5;
	color[] = {1,1,1,0.8};
	colorActive[] = {1,1,1,1};
	soundEnter[] = {
		"\A3\ui_f\data\sound\RscButton\soundEnter",
		0.09,
		1
	};
	soundPush[] = {
		"\A3\ui_f\data\sound\RscButton\soundPush",
		0.09,
		1
	};
	soundClick[] = {
		"\A3\ui_f\data\sound\RscButton\soundClick",
		0.09,
		1
	};
	soundEscape[] = {
		"\A3\ui_f\data\sound\RscButton\soundEscape",
		0.09,
		1
	};
};

