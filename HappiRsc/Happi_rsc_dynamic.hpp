////////////////////////////////////////////////////////
//                      GhOsT                         //
//                  2015 Arma 3                       //
//           	 Vetulus aka HappIfeeT                //
//                      GhOsT                         //
//            Ecole et Centre d'instruction           //
////////////////////////////////////////////////////////

class HappiRscDynamic {
	idd = -1;
	movingEnable=0;
	duration=1e+011;
	fadein=1;
	name="HappiDynamicText";
	onLoad = "uiNamespace setVariable ['HappiRscDynamicHUD', _this select 0];";
	controlsBackground[] = {};
	objects[] = { };
	controls[] = {HappiText};
	class HappiText {
		idc = 1100;
		type = CT_STRUCTURED_TEXT;
		style = ST_LEFT;
		colorText[]={0,0,0,1};
		colorBackground[] = {0, 0, 0, 0};
		x = safezonex + safezonew - 0.4;
		y = safezoney + safezoneh - 1.12;
		//w = 0.325;
		w = 0.4;
		h = 0.12;
		size = 0.04;
		sizeEx = 0.1;
		text = "";
		lineSpacing = 4;
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