class  DlgECIBackground {

	idd = RNG_IDD_BG;
	name = "ECIBackground";
	objects[] = {};
	controlsBackground[] = {};
	controls[] = {UI1};
	onLoad = "(_this select 0) call ECI_RNG_window_animationIN;";

};