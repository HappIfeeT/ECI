////////////////////////////////////////////////////////
//                  2015 Arma 3                       //
//           	 Vetulus aka HappIfeeT                //
//                      GhOsT                         //
//            Ecole et Centre d'instruction           //
////////////////////////////////////////////////////////

class CentreInstruction
{
	name =  "Camp Instruction EUSARES";
	modules[] = {"CqbStand"};
	
};
#include "CfgCentreInstruction\CfgSpawner.hpp"  
class Module
{
	name = "";
	pic = "";
	sites[] = {};

};
class Site
{
	id = 0;
	idstand = 0;
	name = "Default name";
	title = "Default title";
	levels[] = {};
	exotypes[] = {};
	startScript = "";
	clearScript = "";
};
class Level
{
	id = 0;
	name = "";
	description = "STR_ECI_DLG_User_Module_Site_Level";
	startArgs[] = {};
	clearArgs[] = {};
	image = 0;
};
class type_exo_GEN
	{
		id = 0;
		name = "";
		title = "";
		image = 0;
};
class type_exo_det
	{
		id = 0;
		name = "";
		image = 0;
		};	
#include "CfgCentreInstruction\CfgStandCqb.hpp"