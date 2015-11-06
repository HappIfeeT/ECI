/*
	File: vehiclePatrol.sqf
	Author: <G.I.D> Sacha

	Description:
	Spawns a vehicle and moves it throught a number of waypoints. IF behavior of vehicle is not specified, the vehicle is passive/non-agressive.
	The vehicle and its crew get detroyed on last waypoint.

	Parameters:
	0: Class of the vehicle being spawned (string)
	1: Side or group of the vehicle being spawned (string)
	2: Ordered list of waypoints to go throught. First pos in array is spawning location (array : positions)
	3: (optional) Azimuth in wich the vehicle will spawn, default 0 (number)
		Waypoints action is always "MOVE". CompletionRdius is 15.
	4: (optional) Behavior of the vehicle being spawned, default "CARELESS" (string)
	5: (optional) Combat mode of the vehicle being spawned, default "BLUE" (string)
	6: (optional) Speed of the vehicle being spawned, default "NORMAL" (string)
	7: (optional) If true the driver and turrets don't aquire targets, default true (boolean)

	Returns:
	Array:
	0: new vehicle (Object).
	1: all crew (Array of Objects).
	2: vehicle's group (Group).
*/

private ["_class","_side","_az","_waypoints","_behavior","_combatMode","_speed","_noTarget","_startPos","_vHandle","_v","_vCrew","_vDriver","_wpHandle"];

_class = [_this,0,"",[""]] call BIS_fnc_param;
_side = [_this,1,""] call BIS_fnc_param;
_az = [_this,2,0,[0]] call BIS_fnc_param;
_waypoints = [_this, 3, [],[[]]] call BIS_fnc_param ;
_behavior = [_this,4,"CARELESS",[""]] call BIS_fnc_param;
_combatMode = [_this,5,"BLUE",[""]] call BIS_fnc_param;
_speed = [_this,6,"NORMAL",[""]] call BIS_fnc_param;
_noTarget = [_this,7,true] call BIS_fnc_param;

//params validation
if !((typeName _side == typeName east)or(typeName _side == typeName grpNull)) exitWith {
	["ACA_fnc_vehiclePatrol : Param 1 must be a side or a group"] call BIS_fnc_error;
};
if (count _waypoints < 2) exitWith {
	["ACA_fnc_vehiclePatrol : Param 2 needs at least 2 positions"] call BIS_fnc_error;
};
if !((_az >= 0)and(_az < 360)) exitWith {
	["ACA_fnc_vehiclePatrol : Param 3 must be between 0 and 359"] call BIS_fnc_error;
};
if !(_behavior in ["CARELESS","SAFE","AWARE","COMBAT","STEALTH"]) exitWith {
	["ACA_fnc_vehiclePatrol : Param 4 must be a Behavior"] call BIS_fnc_error;
};
if !(_combatMode in ["BLUE","GREEN","WHITE","YELLOW","RED"]) exitWith {
	["ACA_fnc_vehiclePatrol : Param 5 must be a CombatMode"] call BIS_fnc_error;
};
if !(_speed in ["LIMITED","NORMAL","FULL"]) exitWith {
	["ACA_fnc_vehiclePatrol : Param 6 must be a Speed"] call BIS_fnc_error;
};
if (typeName _noTarget != typeName true) exitWith {
	["ACA_fnc_vehiclePatrol : Param 7 must be boolean"] call BIS_fnc_error;
};


_startPos = _waypoints select 0;

//spawn vehicle
_vHandle = [_startPos , _az, _class, _side] call BIS_fnc_spawnVehicle;
_v = _vHandle select 0;
_vCrew = _vHandle select 2;
_vDriver = driver _v;

//set vehicle behavior and combat mode
_vCrew setBehaviour _behavior;
_vCrew setCombatMode _combatMode;
if (_noTarget) then {
	_vDriver disableAi "TARGET";
	_vDriver disableAi "AUTOTARGET";
};

//remove startPos from waypoints
[_waypoints] call BIS_fnc_arrayShift;
_waypoints = [_waypoints] call ACA_fnc_arrayInvert;
//create waypoints
{
	_wpHandle = _vCrew addWaypoint [_x, 10, _foreachIndex];
	_wpHandle setWaypointBehaviour _behavior;
	_wpHandle setWaypointCombatMode _combatMode;
	_wpHandle setWaypointSpeed _speed;
	_wpHandle setWaypointCompletionRadius 15;
	_wpHandle setWaypointType "MOVE";
	// destroy vehicle on last waypoint
	if (_foreachIndex == 0) then {
		_wpHandle setWaypointStatements ["true"," deletevehicle (vehicle this);{deleteVehicle _x} forEach units group this;"];
	} else {
		_wpHandle setWaypointStatements ["true","group this setCurrentWaypoint [group this, (currentWaypoint group this)-1];"];
	};
} forEach _waypoints;

//return
_vHandle;