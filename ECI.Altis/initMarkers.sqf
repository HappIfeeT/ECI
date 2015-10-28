////////////////////////////////////////////////////////
//                                                    //
//                  2015 Arma 3                       //
//           	 Vetulus aka HappIfeeT                //
//             - http://www.eusares.fr -              //
//            Ecole et Centre d'instruction           //
////////////////////////////////////////////////////////

_modules = getArray (missionConfigFile >> "CentreInstruction" >> "modules");

{
	_module = _x;
	_sites = getArray (missionConfigFile >> _module >> "sites");
	{
		_siteName = getText (missionConfigFile >> _module >> _x >> "name");
		_sitePos = getArray (missionConfigFile >> _module >> _x >> "position");
		_mrk = createMarker [_siteName, _sitePos];
		_mrk setMarkerText _siteName;
		_mrk setMarkerShape "ICON";
		_mrk setMarkerType "loc_tourism";
		_mrk setMarkerColor "ColorBlack";
	} forEach _sites;
} forEach _modules;