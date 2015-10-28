////////////////////////////////////////////////////////
//                                                    //
//                  2015 Arma 3                       //
//           	 Vetulus aka HappIfeeT                //
//             - http://www.eusares.fr -              //
//            Ecole et Centre d'instruction           //
////////////////////////////////////////////////////////

//CENTER TOP HEADER
class mainHeader: ECIPicture
{
	x = HEADER_X;
	y = HEADER_Y;
	w = HEADER_W;
	h = HEADER_H;
};

//CENTER MIDDLE DIV
class mainDiv: ECIControlsGroup {
	x = MAINDIV_X;
	y = MAINDIV_Y;
	w = MAINDIV_W;
	h = MAINDIV_H;
};
class mainDivBg : ECIBackGround  {
	x = 0; y = 0;
	w = MAINDIV_W;
	h = MAINDIV_H;
};
class mainDivTitleBg : ECIBackGround {
	x = 0; y = 0;
	w = MAINDIV_W;
	h = MAINDIV_H * 0.05;
};
class mainDivTitletext : ECIStructuredText {
	x = 0; y = 0;
	w = MAINDIV_W;
	h = MAINDIV_H * 0.05;
	size = MAINDIV_H * 0.045;
};

//LEFT MIDDLE DIV
class leftDiv : ECIControlsGroup {
	moving = 1;
	x = LEFTDIV_X;
	y = LEFTDIV_Y;
	w = LEFTDIV_W;
	h = LEFTDIV_H;
};
class leftDivBg : ECIBackGround  {
	x = 0; y = 0;
	w = LEFTDIV_W;
	h = LEFTDIV_H;
};
class leftDivTitleBg : ECIBackGround {
	x = 0; y = 0;
	w = LEFTDIV_W;
	h = LEFTDIV_H * 0.05;
	//colorbackground[] = ECI_COLOR_RGB_OLIVE;
};
class leftDivTitletext : ECIStructuredText {
	x = 0; y = 0;
	w = LEFTDIV_W;
	h = LEFTDIV_H * 0.05;
	size = LEFTDIV_H * 0.045;
};