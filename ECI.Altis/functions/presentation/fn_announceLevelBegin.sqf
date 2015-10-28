/*
* ARG 0 : Site name
* ARG 1 : Level name
*/
[
	[
		[(_this select 0),"<t align = 'center' size = '0.7' >%1</t><br/>"],
		[(_this select 1),"<t color='#388726' align = 'center' size = '0.8'>%1</t>"]
	],
	0,0,"<t color='#FFFFFFFF' align='center'>%1</t>"
] spawn BIS_fnc_typeText;
sleep 1;