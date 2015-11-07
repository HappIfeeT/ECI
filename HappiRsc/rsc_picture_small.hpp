////////////////////////////////////////////////////////
//                      GhOsT                         //
//                  2015 Arma 3                       //
//           	 Vetulus aka HappIfeeT                //
//                      GhOsT                         //
//            Ecole et Centre d'instruction           //
////////////////////////////////////////////////////////

class EUSARESRscSmallPicture {
	idd = -1;
	movingEnable=0;
	duration=1e+011;
	fadein=1;
	name="EUSARESSmallPicture";
	onLoad = "uiNamespace setVariable ['EUSARESSmallPictureHUD', _this select 0];";
	controlsBackground[] = {};
	objects[] = {};
	controls[] = {EUSARES_Picture_Small};

	class EUSARES_Picture {
		idc = -1;
		type = CT_STATIC;
		style = ST_PICTURE;
		x = 0.4625;
		y = 0.1;
		w = 0.0875;
		h = 0.1;
		colorText[] = {1, 1, 1, 1};
		colorBackground[] = {0, 0, 0, 0};
		text = "";
		font = "PuristaMedium";
		sizeEx = 0;
	};
	
	class EUSARES_Picture_Small : EUSARES_Picture {
		idc = 82565;
		colorText[] = {1, 1, 1, 1};
		text = "";
	};

};