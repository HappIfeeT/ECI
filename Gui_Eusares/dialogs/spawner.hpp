////////////////////////////////////////////////////////
//                      GhOsT                         //
//                  2015 Arma 3                       //
//           	 Vetulus aka HappIfeeT                //
//                      GhOsT                         //
//            Ecole et Centre d'instruction           //
////////////////////////////////////////////////////////

class  DlgECISpawner_AIR1 {

	idd = SPWN_IDD + 1;
	name = "VehicleSpawner1";
	objects[] = {};
	controlsBackground[] = {};
	controls[] = {spawner1};
	onLoad = "(_this select 0) call ECI_SPWN_AIR1_load;";

	class spawner1 : leftDiv {
		idc = SPWN_IDC_spawner + 1;
		x = LEFTDIV_INIT_X;
		class Controls {
		class bg1 : Menu_arsenal_BG {
			x =0;
			y = 0;
			w = LEFTDIV_W;
			h = LEFTDIV_H ;
			};
			/*class bg : leftDivBg {
				colorbackground[] = {0,0,0,0.5};
			};*/
			//class titleBg : leftDivTitleBg{};
			class title1 : leftDivTitleText{ 
			x = LEFTDIV_W * 0.35; 
			y = LEFTDIV_H * 0.25;
			w = LEFTDIV_W * 0.3;
			h = LEFTDIV_H * 0.07;
			colortext[ ]={ 0,0,0,1 };	
			//colortext[ ]={ 0,0.07,0,1 };			
			text = "Arsenal EUSARES - AIR - ";
			};

			class combo1 : ECICombo {
				idc = SPWN_IDC_combo + 1;
				x = LEFTDIV_W * 0.182; 
				y = LEFTDIV_H * 0.31;
				w = LEFTDIV_W * 0.617;
				h = LEFTDIV_H * 0.05;
				//colortext[ ]={ 0,0.07,0,1 };
				onLBSelChanged = "_this call ECI_SPWN_setList1;";
			};

			class list1 : ECIListNBox {
				idc = SPWN_IDC_list + 1;
				x = LEFTDIV_W * 0.182; 
				y = LEFTDIV_H * 0.36;
				w = LEFTDIV_W * 0.617;
				h = LEFTDIV_H * 0.5;
				//colortext[ ]={ 0,0.07,0,1 };
				columns[] = {0,0.1,0.26};
				rowHeight = 0.03 * LEFTDIV_H;
			};

			class create1 : ECIButton {
				idc = SPWN_IDC_create + 1;
				x = LEFTDIV_W * 0.19;
				y = (LEFTDIV_H * 0.36) + (LEFTDIV_H * 0.5);
				w = LEFTDIV_W * 0.29;
				h = LEFTDIV_H * 0.05;
				colortext[ ]={ 0,0.07,0,1 };
				text = "Créer";
				action = "call ECI_SPWN_create1;";
			};

			class delete1 : ECIButton {
				idc = SPWN_IDC_delete + 1;
				x = LEFTDIV_W * 0.495;
				y = (LEFTDIV_H * 0.36) + (LEFTDIV_H * 0.5);
				w = LEFTDIV_W * 0.29;
				h = LEFTDIV_H * 0.05;
				colortext[ ]={ 0,0.07,0,1 };
				text = "Supprimer";
				action = "call ECI_SPWN_delete1;";
			 }; 
			class exit : ECI_EXIT_Button {
			idc = SPWN_IDC_exit + 1;
			x =  LEFTDIV_W * 0.44 + LEFTDIV_W * 0.31;
			y = (LEFTDIV_H * 0.24) 
			w = LEFTDIV_W * 0.04;
			h = LEFTDIV_H * 0.05;
			colortext[ ]= {};
			size = TEXT_SIZE_NORMAL;
			text = "";
			action = "closeDialog 0;";
			
			};
		};
	};

};

class  DlgECISpawner_AIR2 {

	idd = SPWN_IDD + 2 ;
	name = "VehicleSpawner2";
	objects[] = {};
	controlsBackground[] = {};
	controls[] = {spawner2};
	onLoad = "(_this select 0) call ECI_SPWN_AIR2_load;";

	class spawner2 : leftDiv {
		idc = SPWN_IDC_spawner + 2;
		x = LEFTDIV_INIT_X;
		class Controls {
		class bg2 : Menu_arsenal_BG {
			x =0;
			y = 0;
			w = LEFTDIV_W;
			h = LEFTDIV_H ;
			};
			/*class bg : leftDivBg {
				colorbackground[] = {0,0,0,0.5};
			};*/
			//class titleBg : leftDivTitleBg{};
			class title2 : leftDivTitleText{ 
			x = LEFTDIV_W * 0.35; 
			y = LEFTDIV_H * 0.25;
			w = LEFTDIV_W * 0.3;
			h = LEFTDIV_H * 0.07;
			colortext[ ]={ 0,0,0,1 };	
			//colortext[ ]={ 0,0.07,0,1 };			
			text = "Arsenal EUSARES - AIR - ";
			};

			class combo2 : ECICombo {
				idc = SPWN_IDC_combo + 2;
				x = LEFTDIV_W * 0.182; 
				y = LEFTDIV_H * 0.31;
				w = LEFTDIV_W * 0.617;
				h = LEFTDIV_H * 0.05;
				//colortext[ ]={ 0,0.07,0,1 };
				onLBSelChanged = "_this call ECI_SPWN_setList2;";
			};

			class list2 : ECIListNBox {
				idc = SPWN_IDC_list + 2;
				x = LEFTDIV_W * 0.182; 
				y = LEFTDIV_H * 0.36;
				w = LEFTDIV_W * 0.617;
				h = LEFTDIV_H * 0.5;
				//colortext[ ]={ 0,0.07,0,1 };
				columns[] = {0,0.1,0.26};
				rowHeight = 0.03 * LEFTDIV_H;
			};

			class create2 : ECIButton {
				idc = SPWN_IDC_create + 2;
				x = LEFTDIV_W * 0.19;
				y = (LEFTDIV_H * 0.36) + (LEFTDIV_H * 0.5);
				w = LEFTDIV_W * 0.29;
				h = LEFTDIV_H * 0.05;
				colortext[ ]={ 0,0.07,0,1 };
				text = "Créer";
				action = "call ECI_SPWN_create2;";
			};

			class delete2 : ECIButton {
				idc = SPWN_IDC_delete + 2;
				x = LEFTDIV_W * 0.495;
				y = (LEFTDIV_H * 0.36) + (LEFTDIV_H * 0.5);
				w = LEFTDIV_W * 0.29;
				h = LEFTDIV_H * 0.05;
				colortext[ ]={ 0,0.07,0,1 };
				text = "Supprimer";
				action = "call ECI_SPWN_delete2;";
			 };
			class exit : ECI_EXIT_Button {
			idc = SPWN_IDC_exit + 2;
			x =  LEFTDIV_W * 0.44 + LEFTDIV_W * 0.31;
			y = (LEFTDIV_H * 0.24) 
			w = LEFTDIV_W * 0.04;
			h = LEFTDIV_H * 0.05;
			colortext[ ]= {};
			size = TEXT_SIZE_NORMAL;
			text = "";
			action = "closeDialog 0;";
		  };
		};
	};

};

class  DlgECISpawner_TERRE1 {

	idd = SPWN_IDD + 3;
	name = "VehicleSpawner3";
	objects[] = {};
	controlsBackground[] = {};
	controls[] = {spawner3};
	onLoad = "(_this select 0) call ECI_SPWN_TERRE1_load;";

	class spawner3 : leftDiv {
		idc = SPWN_IDC_spawner + 3;
		x = LEFTDIV_INIT_X;
		class Controls {
		class bg3 : Menu_arsenal_BG {
			x =0;
			y = 0;
			w = LEFTDIV_W;
			h = LEFTDIV_H ;
			};
			/*class bg : leftDivBg {
				colorbackground[] = {0,0,0,0.5};
			};*/
			//class titleBg : leftDivTitleBg{};
			class title3 : leftDivTitleText{ 
			x = LEFTDIV_W * 0.35; 
			y = LEFTDIV_H * 0.25;
			w = LEFTDIV_W * 0.3;
			h = LEFTDIV_H * 0.07;
			colortext[ ]={ 0,0,0,1 };			
			text = "Arsenal EUSARES - TERRE -";
			};

			class combo3 : ECICombo {
				idc = SPWN_IDC_combo + 3;
				x = LEFTDIV_W * 0.182; 
				y = LEFTDIV_H * 0.31;
				w = LEFTDIV_W * 0.617;
				h = LEFTDIV_H * 0.05;
				//colortext[ ]={ 0,0.07,0,1 };
				onLBSelChanged = "_this call ECI_SPWN_setList3;";
			};

			class list3 : ECIListNBox {
				idc = SPWN_IDC_list + 3 ;
				x = LEFTDIV_W * 0.182; 
				y = LEFTDIV_H * 0.36;
				w = LEFTDIV_W * 0.617;
				h = LEFTDIV_H * 0.5;
				//colortext[ ]={ 0,0.07,0,1 };
				columns[] = {0,0.1,0.26};
				rowHeight = 0.03 * LEFTDIV_H;
			};

			class create3 : ECIButton {
				idc = SPWN_IDC_create + 3;
				x = LEFTDIV_W * 0.19;
				y = (LEFTDIV_H * 0.36) + (LEFTDIV_H * 0.5);
				w = LEFTDIV_W * 0.29;
				h = LEFTDIV_H * 0.05;
				colortext[ ]={ 0,0.07,0,1 };
				text = "Créer";
				action = "call ECI_SPWN_create3;";
			};

			class delete3 : ECIButton {
				idc = SPWN_IDC_delete + 3;
				x = LEFTDIV_W * 0.495;
				y = (LEFTDIV_H * 0.36) + (LEFTDIV_H * 0.5);
				w = LEFTDIV_W * 0.29;
				h = LEFTDIV_H * 0.05;
				colortext[ ]={ 0,0.07,0,1 };
				text = "Supprimer";
				action = "call ECI_SPWN_delete3;";
			};
			class exit : ECI_EXIT_Button {
			idc = SPWN_IDC_exit + 3;
			x =  LEFTDIV_W * 0.44 + LEFTDIV_W * 0.31;
			y = (LEFTDIV_H * 0.24) 
			w = LEFTDIV_W * 0.04;
			h = LEFTDIV_H * 0.05;
			colortext[ ]= {};
			size = TEXT_SIZE_NORMAL;
			text = "";
			action = "closeDialog 0;";
			}
		};
	};

};

class  DlgECISpawner_TERRE2 {

	idd = SPWN_IDD + 4 ;
	name = "VehicleSpawner4";
	objects[] = {};
	controlsBackground[] = {};
	controls[] = {spawner4};
	onLoad = "(_this select 0) call ECI_SPWN_TERRE2_load;";

	class spawner4 : leftDiv {
		idc = SPWN_IDC_spawner + 4;
		x = LEFTDIV_INIT_X;
		class Controls {
		class bg4 : Menu_arsenal_BG {
			x =0;
			y = 0;
			w = LEFTDIV_W;
			h = LEFTDIV_H ;
			};
			/*class bg : leftDivBg {
				colorbackground[] = {0,0,0,0.5};
			};*/
			//class titleBg : leftDivTitleBg{};
			class title4 : leftDivTitleText{ 
			x = LEFTDIV_W * 0.35; 
			y = LEFTDIV_H * 0.25;
			w = LEFTDIV_W * 0.3;
			h = LEFTDIV_H * 0.07;
			colortext[ ]={ 0,0,0,1 };	
			//colortext[ ]={ 0,0.07,0,1 };			
			text = "Arsenal EUSARES - TERRE - ";
			};

			class combo4 : ECICombo {
				idc = SPWN_IDC_combo + 4;
				x = LEFTDIV_W * 0.182; 
				y = LEFTDIV_H * 0.31;
				w = LEFTDIV_W * 0.617;
				h = LEFTDIV_H * 0.05;
				//colortext[ ]={ 0,0.07,0,1 };
				onLBSelChanged = "_this call ECI_SPWN_setList4;";
			};

			class list4 : ECIListNBox {
				idc = SPWN_IDC_list + 4;
				x = LEFTDIV_W * 0.182; 
				y = LEFTDIV_H * 0.36;
				w = LEFTDIV_W * 0.617;
				h = LEFTDIV_H * 0.5;
				//colortext[ ]={ 0,0.07,0,1 };
				columns[] = {0,0.1,0.26};
				rowHeight = 0.03 * LEFTDIV_H;
			};

			class create4 : ECIButton {
				idc = SPWN_IDC_create + 4;
				x = LEFTDIV_W * 0.19;
				y = (LEFTDIV_H * 0.36) + (LEFTDIV_H * 0.5);
				w = LEFTDIV_W * 0.29;
				h = LEFTDIV_H * 0.05;
				colortext[ ]={ 0,0.07,0,1 };
				text = "Créer";
				action = "call ECI_SPWN_create4;";
			};

			class delete4 : ECIButton {
				idc = SPWN_IDC_delete + 4;
				x = LEFTDIV_W * 0.495;
				y = (LEFTDIV_H * 0.36) + (LEFTDIV_H * 0.5);
				w = LEFTDIV_W * 0.29;
				h = LEFTDIV_H * 0.05;
				colortext[ ]={ 0,0.07,0,1 };
				text = "Supprimer";
				action = "call ECI_SPWN_delete4;";
			};
			class exit : ECI_EXIT_Button {
			idc = SPWN_IDC_exit + 4;
			x =  LEFTDIV_W * 0.44 + LEFTDIV_W * 0.31;
			y = (LEFTDIV_H * 0.24) 
			w = LEFTDIV_W * 0.04;
			h = LEFTDIV_H * 0.05;
			colortext[ ]= {};
			size = TEXT_SIZE_NORMAL;
			text = "";
			action = "closeDialog 0;";
			}
		};
	};

};