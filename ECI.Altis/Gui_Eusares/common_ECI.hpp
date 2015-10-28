////////////////////////////////////////////////////////
//                                                    //
//                  2015 Arma 3                       //
//           	 Vetulus aka HappIfeeT                //
//             - http://www.eusares.fr -              //
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
		text = "<t>Your yellow text!</t>";
		lineSpacing = 1;
		class Attributes { 
			font = "TahomaB"; 
			color = "#000000"; 
			align = "left"; 
			valign = "middle"; 
			shadow = false; 
			//shadowColor = "#ff0000"; 
			size = "1"; 
		}; 
	};
class ECIText : RscText{
	colorText[ ]={0,0.26,0.2,1 };
	sizeEx = 0.015 * safezoneH;
	//font = "TahomaB";
	size = 0.015 * safezoneH; 
		};
class ECIText2 : RscText{
	colorText[ ]={0,0.26,0.2,1 };
	//font = "TahomaB";
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
class ECIListBox : RscListBox
{
	
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
class ECIButton : RscButton
{
	colorBackground[] = ECI_COLOR_RGB_GRISCLAIR;
	colorBackgroundActive[] = ECI_COLOR_RGB_GRISSOMBRE;
	colorFocused[] = ECI_COLOR_RGB_GRISSOMBRE;
	colorBackgroundDisabled[] = {0.5,0.5,0.5,1};
	colorShadow[] = {0,0,0,0.7};
	sizeEx = 0.016 * safezoneH;
};

class ECI_EXIT_Button 
{
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

class ECIListNBox : ECIListBox
{
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

class ECIActivePicture 
{
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

class ECIMapControl
{
	idc = -1;
	type = CT_MAP_MAIN;
	style = ST_PICTURE;
	
	
	font = "PuristaMedium";
	sizeEx = 0.016;
	
	moveOnEdges = 0;
	shadow = 0;
	ptsPerSquareSea = 5;
	ptsPerSquareTxt = 20;
	ptsPerSquareCLn = 10;
	ptsPerSquareExp = 10;
	ptsPerSquareCost = 10;
	ptsPerSquareFor = 9;
	ptsPerSquareForEdge = 9;
	ptsPerSquareRoad = 6;
	ptsPerSquareObj = 9;
	showCountourInterval = 0;
	scaleMin = 0.001;
	scaleMax = 1.0;
	scaleDefault = 0.16;
	maxSatelliteAlpha = 0.85;
	alphaFadeStartScale = 2;
	alphaFadeEndScale = 2;
	colorText[] = {0,0,0,1.0};
	colorBackground[] = {0.969,0.957,0.949,1.0};
	colorSea[] = {0.467,0.631,0.851,0.5};
	colorForest[] = {0.624,0.78,0.388,0.5};
	colorForestBorder[] = {0.0,0.0,0.0,0.0};
	colorRocks[] = {0.0,0.0,0.0,0.3};
	colorRocksBorder[] = {0.0,0.0,0.0,0.0};
	colorLevels[] = {0.286,0.177,0.094,0.5};
	colorMainCountlines[] = {0.572,0.354,0.188,0.5};
	colorCountlines[] = {0.572,0.354,0.188,0.25};
	colorMainCountlinesWater[] = {0.491,0.577,0.702,0.6};
	colorCountlinesWater[] = {0.491,0.577,0.702,0.3};
	colorPowerLines[] = {0.1,0.1,0.1,1.0};
	colorRailWay[] = {0.8,0.2,0.0,1.0};
	colorNames[] = {0.1,0.1,0.1,0.9};
	colorInactive[] = {1.0,1.0,1.0,0.5};
	colorOutside[] = {0.0,0.0,0.0,1.0};
	colorTracks[] = {0.84,0.76,0.65,0.15};
	colorTracksFill[] = {0.84,0.76,0.65,1.0};
	colorRoads[] = {0.7,0.7,0.7,1.0};
	colorRoadsFill[] = {1.0,1.0,1.0,1.0};
	colorMainRoads[] = {0.9,0.5,0.3,1.0};
	colorMainRoadsFill[] = {1.0,0.6,0.4,1.0};
	colorGrid[] = {0.1,0.1,0.1,0.6};
	colorGridMap[] = {0.1,0.1,0.1,0.6};
	fontLabel = "PuristaMedium";
	sizeExLabel = "(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
	fontGrid = "TahomaB";
	sizeExGrid = 0.02;
	fontUnits = "TahomaB";
	sizeExUnits = "(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
	fontNames = "EtelkaNarrowMediumPro";
	sizeExNames = "(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8) * 2";
	fontInfo = "PuristaMedium";
	sizeExInfo = "(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
	fontLevel = "TahomaB";
	sizeExLevel = 0.02;
	text = "#(argb,8,8,3)color(1,1,1,1)";
	class Legend
	{
		x = "SafeZoneX + 					(			((safezoneW / safezoneH) min 1.2) / 40)";
		y = "SafeZoneY + safezoneH - 4.5 * 					(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
		w = "10 * 					(			((safezoneW / safezoneH) min 1.2) / 40)";
		h = "3.5 * 					(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
		font = "PuristaMedium";
		sizeEx = "(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
		colorBackground[] = {1,1,1,0.5};
		color[] = {0,0,0,1};
	};
	class ActiveMarker
	{
		color[] = {0.3,0.1,0.9,1};
		size = 50;
	};
	class Task
	{
		icon = "\A3\ui_f\data\map\mapcontrol\taskIcon_CA.paa";
		iconCreated = "\A3\ui_f\data\map\mapcontrol\taskIconCreated_CA.paa";
		iconCanceled = "\A3\ui_f\data\map\mapcontrol\taskIconCanceled_CA.paa";
		iconDone = "\A3\ui_f\data\map\mapcontrol\taskIconDone_CA.paa";
		iconFailed = "\A3\ui_f\data\map\mapcontrol\taskIconFailed_CA.paa";
		color[] = {"(profilenamespace getvariable ['IGUI_TEXT_RGB_R',0])","(profilenamespace getvariable ['IGUI_TEXT_RGB_G',1])","(profilenamespace getvariable ['IGUI_TEXT_RGB_B',1])","(profilenamespace getvariable ['IGUI_TEXT_RGB_A',0.8])"};
		colorCreated[] = {1,1,1,1};
		colorCanceled[] = {0.7,0.7,0.7,1};
		colorDone[] = {0.7,1,0.3,1};
		colorFailed[] = {1,0.3,0.2,1};
		size = 27;
		importance = 1;
		coefMin = 1;
		coefMax = 1;
	};
	class Waypoint
	{
		icon = "\A3\ui_f\data\map\mapcontrol\waypoint_ca.paa";
		size = 24;
		importance = 1;
		coefMin = 1.0;
		coefMax = 1.0;
		color[] = {0,0,0,1};
	};
	class WaypointCompleted
	{
		icon = "\A3\ui_f\data\map\mapcontrol\waypointCompleted_ca.paa";
		size = 24;
		importance = 1;
		coefMin = 1.0;
		coefMax = 1.0;
		color[] = {0,0,0,1};
	};
	class CustomMark
	{
		icon = "\A3\ui_f\data\map\mapcontrol\custommark_ca.paa";
		size = 24;
		importance = 1;
		coefMin = 1;
		coefMax = 1;
		color[] = {0,0,0,1};
	};
	class Command
	{
		icon = "\A3\ui_f\data\map\mapcontrol\waypoint_ca.paa";
		size = 18;
		importance = 1;
		coefMin = 1;
		coefMax = 1;
		color[] = {1,1,1,1};
	};
	class Bush
	{
		icon = "\A3\ui_f\data\map\mapcontrol\bush_ca.paa";
		color[] = {0.45,0.64,0.33,0.4};
		size = "14/2";
		importance = "0.2 * 14 * 0.05 * 0.05";
		coefMin = 0.25;
		coefMax = 4;
	};
	class Rock
	{
		icon = "\A3\ui_f\data\map\mapcontrol\rock_ca.paa";
		color[] = {0.1,0.1,0.1,0.8};
		size = 12;
		importance = "0.5 * 12 * 0.05";
		coefMin = 0.25;
		coefMax = 4;
	};
	class SmallTree
	{
		icon = "\A3\ui_f\data\map\mapcontrol\bush_ca.paa";
		color[] = {0.45,0.64,0.33,0.4};
		size = 12;
		importance = "0.6 * 12 * 0.05";
		coefMin = 0.25;
		coefMax = 4;
	};
	class Tree
	{
		icon = "\A3\ui_f\data\map\mapcontrol\bush_ca.paa";
		color[] = {0.45,0.64,0.33,0.4};
		size = 12;
		importance = "0.9 * 16 * 0.05";
		coefMin = 0.25;
		coefMax = 4;
	};
	class busstop
	{
		icon = "\A3\ui_f\data\map\mapcontrol\busstop_CA.paa";
		size = 24;
		importance = 1;
		coefMin = 0.85;
		coefMax = 1.0;
		color[] = {1,1,1,1};
	};
	class fuelstation
	{
		icon = "\A3\ui_f\data\map\mapcontrol\fuelstation_CA.paa";
		size = 24;
		importance = 1;
		coefMin = 0.85;
		coefMax = 1.0;
		color[] = {1,1,1,1};
	};
	class hospital
	{
		icon = "\A3\ui_f\data\map\mapcontrol\hospital_CA.paa";
		size = 24;
		importance = 1;
		coefMin = 0.85;
		coefMax = 1.0;
		color[] = {1,1,1,1};
	};
	class church
	{
		icon = "\A3\ui_f\data\map\mapcontrol\church_CA.paa";
		size = 24;
		importance = 1;
		coefMin = 0.85;
		coefMax = 1.0;
		color[] = {1,1,1,1};
	};
	class lighthouse
	{
		icon = "\A3\ui_f\data\map\mapcontrol\lighthouse_CA.paa";
		size = 24;
		importance = 1;
		coefMin = 0.85;
		coefMax = 1.0;
		color[] = {1,1,1,1};
	};
	class power
	{
		icon = "\A3\ui_f\data\map\mapcontrol\power_CA.paa";
		size = 24;
		importance = 1;
		coefMin = 0.85;
		coefMax = 1.0;
		color[] = {1,1,1,1};
	};
	class powersolar
	{
		icon = "\A3\ui_f\data\map\mapcontrol\powersolar_CA.paa";
		size = 24;
		importance = 1;
		coefMin = 0.85;
		coefMax = 1.0;
		color[] = {1,1,1,1};
	};
	class powerwave
	{
		icon = "\A3\ui_f\data\map\mapcontrol\powerwave_CA.paa";
		size = 24;
		importance = 1;
		coefMin = 0.85;
		coefMax = 1.0;
		color[] = {1,1,1,1};
	};
	class powerwind
	{
		icon = "\A3\ui_f\data\map\mapcontrol\powerwind_CA.paa";
		size = 24;
		importance = 1;
		coefMin = 0.85;
		coefMax = 1.0;
		color[] = {1,1,1,1};
	};
	class quay
	{
		icon = "\A3\ui_f\data\map\mapcontrol\quay_CA.paa";
		size = 24;
		importance = 1;
		coefMin = 0.85;
		coefMax = 1.0;
		color[] = {1,1,1,1};
	};
	class shipwreck
	{
		icon = "\A3\ui_f\data\map\mapcontrol\shipwreck_CA.paa";
		size = 24;
		importance = 1;
		coefMin = 0.85;
		coefMax = 1.0;
		color[] = {1,1,1,1};
	};
	class transmitter
	{
		icon = "\A3\ui_f\data\map\mapcontrol\transmitter_CA.paa";
		size = 24;
		importance = 1;
		coefMin = 0.85;
		coefMax = 1.0;
		color[] = {1,1,1,1};
	};
	class watertower
	{
		icon = "\A3\ui_f\data\map\mapcontrol\watertower_CA.paa";
		size = 24;
		importance = 1;
		coefMin = 0.85;
		coefMax = 1.0;
		color[] = {1,1,1,1};
	};
	class Cross
	{
		icon = "\A3\ui_f\data\map\mapcontrol\Cross_CA.paa";
		size = 24;
		importance = 1;
		coefMin = 0.85;
		coefMax = 1.0;
		color[] = {0,0,0,1};
	};
	class Chapel
	{
		icon = "\A3\ui_f\data\map\mapcontrol\Chapel_CA.paa";
		size = 24;
		importance = 1;
		coefMin = 0.85;
		coefMax = 1.0;
		color[] = {0,0,0,1};
	};
	class Bunker
	{
		icon = "\A3\ui_f\data\map\mapcontrol\bunker_ca.paa";
		size = 14;
		importance = "1.5 * 14 * 0.05";
		coefMin = 0.25;
		coefMax = 4;
		color[] = {0,0,0,1};
	};
	class Fortress
	{
		icon = "\A3\ui_f\data\map\mapcontrol\bunker_ca.paa";
		size = 16;
		importance = "2 * 16 * 0.05";
		coefMin = 0.25;
		coefMax = 4;
		color[] = {0,0,0,1};
	};
	class Fountain
	{
		icon = "\A3\ui_f\data\map\mapcontrol\fountain_ca.paa";
		size = 11;
		importance = "1 * 12 * 0.05";
		coefMin = 0.25;
		coefMax = 4;
		color[] = {0,0,0,1};
	};
	class Ruin
	{
		icon = "\A3\ui_f\data\map\mapcontrol\ruin_ca.paa";
		size = 16;
		importance = "1.2 * 16 * 0.05";
		coefMin = 1;
		coefMax = 4;
		color[] = {0,0,0,1};
	};
	class Stack
	{
		icon = "\A3\ui_f\data\map\mapcontrol\stack_ca.paa";
		size = 20;
		importance = "2 * 16 * 0.05";
		coefMin = 0.9;
		coefMax = 4;
		color[] = {0,0,0,1};
	};
	class Tourism
	{
		icon = "\A3\ui_f\data\map\mapcontrol\tourism_ca.paa";
		size = 16;
		importance = "1 * 16 * 0.05";
		coefMin = 0.7;
		coefMax = 4;
		color[] = {0,0,0,1};
	};
	class ViewTower
	{
		icon = "\A3\ui_f\data\map\mapcontrol\viewtower_ca.paa";
		size = 16;
		importance = "2.5 * 16 * 0.05";
		coefMin = 0.5;
		coefMax = 4;
		color[] = {0,0,0,1};
	};
};