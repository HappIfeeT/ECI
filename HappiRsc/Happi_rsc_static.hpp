////////////////////////////////////////////////////////
//                      GhOsT                         //
//                  2015 Arma 3                       //
//           	 Vetulus aka HappIfeeT                //
//                      GhOsT                         //
//            Ecole et Centre d'instruction           //
////////////////////////////////////////////////////////


class HappiRscStatic {
	idd = -1;
	movingEnable=0;
	duration=1e+011;
	fadein=1;
	name="HappiStaticText";
	onLoad = "uiNamespace setVariable ['HappiRscStaticHUD', _this select 0];";
	controlsBackground[] = {};
	objects[] = { };
	controls[] = {HappiStaticText};
	class HappiStaticText {
		idc = 1150;
		type = CT_STRUCTURED_TEXT;
		style = ST_LEFT;
		colorText[]={};
		colorBackground[] = {0, 0, 0, 0};
		x = 0.575;
		y = safezoney + safezoneh - 1.12;
		w = 0.4;
		h = 0.12;
		size = 0.035;
		sizeEx = 0.001;
		text = "";
		lineSpacing = 0.001;
		class Attributes { 
			font = "PuristaMedium"; 
			color = "#FFFFFF"; 
			align = "left";
			valign = "middle"; 
			shadow = false; 
			shadowColor = "#ff0000"; 
			size = "1.5"; 
		}; 
	};
};