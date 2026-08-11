/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 2C556B4E
/// @DnDArgument : "funcName" "sellItem"
/// @DnDArgument : "arg" "prizeName, variant, amount"
function sellItem(prizeName, variant, amount) {	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 0E50F67F
	/// @DnDParent : 2C556B4E
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10)var prizeValue = global.itemDatabase[$prizeName].value;$(13_10)$(13_10)addMoney(prizeValue); $(13_10)DataManager.reduceInventoryAmount(prizeName, variant, amount); "
	/// @description Execute Code
	var prizeValue = global.itemDatabase[$prizeName].value;
	
	addMoney(prizeValue); 
	DataManager.reduceInventoryAmount(prizeName, variant, amount);}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 716BEBF8
/// @DnDArgument : "funcName" "addMoney"
/// @DnDArgument : "arg" "amount"
function addMoney(amount) {	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 03FE9352
	/// @DnDParent : 716BEBF8
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10)global.money += amount; $(13_10)$(13_10)if (global.money > 9999){$(13_10)	global.money = 9999; $(13_10)}"
	/// @description Execute Code
	global.money += amount; 
	
	if (global.money > 9999){
		global.money = 9999; 
	}}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 30F7F0E5
/// @DnDArgument : "funcName" "reduceMoney"
/// @DnDArgument : "arg" "amount"
function reduceMoney(amount) {	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 5F836896
	/// @DnDParent : 30F7F0E5
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10)global.money -= amount; $(13_10)$(13_10)if (global.money <= 0){$(13_10)	global.money = 0; $(13_10)}"
	/// @description Execute Code
	global.money -= amount; 
	
	if (global.money <= 0){
		global.money = 0; 
	}}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 3A16064E
/// @DnDArgument : "funcName" "resetClawGame"
function resetClawGame() {	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 3F6A9A04
	/// @DnDParent : 3A16064E
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)show_debug_message("Resetting claw game");$(13_10)$(13_10)with (obj_prize_parent){$(13_10)	instance_destroy(); $(13_10)}$(13_10)$(13_10)resetClawPlays(); $(13_10)resumeGame(); $(13_10)$(13_10)alarm[1] = 1; $(13_10)"
	/// @description Execute Code
	
	show_debug_message("Resetting claw game");
	
	with (obj_prize_parent){
		instance_destroy(); 
	}
	
	resetClawPlays(); 
	resumeGame(); 
	
	alarm[1] = 1;}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 317C89AA
/// @DnDArgument : "funcName" "updatePlays"
function updatePlays() {	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 278CD806
	/// @DnDParent : 317C89AA
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10)playsLeft -= 1; $(13_10)show_debug_message("Updated plays to: " + string(playsLeft));$(13_10)$(13_10)if (playsLeft <= 0){$(13_10)	pauseGame(); $(13_10)	UIManager.showGameOverMenu(); $(13_10)}"
	/// @description Execute Code
	playsLeft -= 1; 
	show_debug_message("Updated plays to: " + string(playsLeft));
	
	if (playsLeft <= 0){
		pauseGame(); 
		UIManager.showGameOverMenu(); 
	}}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 1B2A8EE1
/// @DnDArgument : "funcName" "resetClawPlays"
function resetClawPlays() {	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 1BCE8BA7
	/// @DnDParent : 1B2A8EE1
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10)if (global.roomDatabase[$currentRoomName].type == "game"){$(13_10)	$(13_10)		playsLeft = 3; $(13_10)	show_debug_message("Resetting plays to " + string(playsLeft));$(13_10)$(13_10)}"
	/// @description Execute Code
	if (global.roomDatabase[$currentRoomName].type == "game"){
		
			playsLeft = 3; 
		show_debug_message("Resetting plays to " + string(playsLeft));
	
	}}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 7972BDA2
/// @DnDArgument : "funcName" "pauseGameWithMenu"
function pauseGameWithMenu() {	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 4DFA036C
	/// @DnDParent : 7972BDA2
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10)pauseGame() $(13_10)$(13_10)UIManager.showPauseMenu(); "
	/// @description Execute Code
	pauseGame() 
	
	UIManager.showPauseMenu();}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 7ED60970
/// @DnDArgument : "funcName" "resumeGame"
function resumeGame() {	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 760FBA5D
	/// @DnDParent : 7ED60970
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10)global.gamePaused = false; $(13_10)$(13_10)if (global.roomDatabase[$currentRoomName].usesPhysics == true){$(13_10)	physics_world_update_speed(120);$(13_10)}"
	/// @description Execute Code
	global.gamePaused = false; 
	
	if (global.roomDatabase[$currentRoomName].usesPhysics == true){
		physics_world_update_speed(120);
	}}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 02C1B7AA
/// @DnDArgument : "funcName" "pauseGame"
function pauseGame() {	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 0C5342B4
	/// @DnDParent : 02C1B7AA
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10)global.gamePaused = true; $(13_10)$(13_10)if (global.roomDatabase[$currentRoomName].usesPhysics == true){$(13_10)	physics_world_update_speed(0);$(13_10)}$(13_10)$(13_10)"
	/// @description Execute Code
	global.gamePaused = true; 
	
	if (global.roomDatabase[$currentRoomName].usesPhysics == true){
		physics_world_update_speed(0);
	}}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 35A778D1
/// @DnDArgument : "funcName" "switchRoom"
/// @DnDArgument : "arg" "newRoomName"
function switchRoom(newRoomName) {	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 77648061
	/// @DnDParent : 35A778D1
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10)var newRoomObject = global.roomDatabase[$newRoomName].roomObject; $(13_10)$(13_10)if (newRoomObject != noone){$(13_10)	$(13_10)	UIManager.hideRoomUI(currentRoomName); $(13_10)	UIManager.showRoomUI(newRoomName); $(13_10)	$(13_10)	currentRoomName = newRoomName; $(13_10)	room_goto(newRoomObject);$(13_10)	roomSetup(currentRoomName); $(13_10)}"
	/// @description Execute Code
	var newRoomObject = global.roomDatabase[$newRoomName].roomObject; 
	
	if (newRoomObject != noone){
		
		UIManager.hideRoomUI(currentRoomName); 
		UIManager.showRoomUI(newRoomName); 
		
		currentRoomName = newRoomName; 
		room_goto(newRoomObject);
		roomSetup(currentRoomName); 
	}}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 2809700C
/// @DnDArgument : "funcName" "roomSetup"
/// @DnDArgument : "arg" "roomName"
function roomSetup(roomName) {	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 08D3FFD6
	/// @DnDParent : 2809700C
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)if  (global.roomDatabase[$roomName].type == "game"){$(13_10)$(13_10)playsLeft = 3;$(13_10)populatePrizeOptions(roomName);$(13_10)$(13_10)alarm[0] = 1;$(13_10)}"
	/// @description Execute Code
	
	if  (global.roomDatabase[$roomName].type == "game"){
	
	playsLeft = 3;
	populatePrizeOptions(roomName);
	
	alarm[0] = 1;
	}}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 0E9F86AD
/// @DnDArgument : "funcName" "populatePrizeOptions"
/// @DnDArgument : "arg" "gameName"
function populatePrizeOptions(gameName) {	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 7055EEC4
	/// @DnDParent : 0E9F86AD
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10)populatePrizeTarget = gameName;$(13_10)prizeOptions = ds_list_create(); $(13_10)$(13_10)struct_foreach(global.itemDatabase, function(key, value) {$(13_10)$(13_10)	if ( global.itemDatabase[$key].gameSource == populatePrizeTarget){$(13_10)	ds_list_add(prizeOptions, global.itemDatabase[$key].object);$(13_10)	}$(13_10)});$(13_10)$(13_10)$(13_10)prizeVariety = ds_list_size(prizeOptions); $(13_10)populatePrizeTarget = ""; "
	/// @description Execute Code
	populatePrizeTarget = gameName;
	prizeOptions = ds_list_create(); 
	
	struct_foreach(global.itemDatabase, function(key, value) {
	
		if ( global.itemDatabase[$key].gameSource == populatePrizeTarget){
		ds_list_add(prizeOptions, global.itemDatabase[$key].object);
		}
	});
	
	
	prizeVariety = ds_list_size(prizeOptions); 
	populatePrizeTarget = "";}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1A94BAF0
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)persistent = true; $(13_10)$(13_10)global.gamePaused = false; $(13_10)global.money = 200; $(13_10)$(13_10)instance_create_layer($(13_10)0,$(13_10)0,$(13_10)"Managers",$(13_10)DataManager$(13_10))$(13_10)$(13_10)instance_create_layer($(13_10)0,$(13_10)0,$(13_10)"Managers",$(13_10)UIManager$(13_10))$(13_10)$(13_10)instance_create_layer($(13_10)0,$(13_10)0,$(13_10)"Managers",$(13_10)ParticleManager$(13_10))$(13_10)$(13_10)$(13_10)//roomSetup("crane_pond"); $(13_10)"
/// @description Execute Code
persistent = true; 

global.gamePaused = false; 
global.money = 200; 

instance_create_layer(
0,
0,
"Managers",
DataManager
)

instance_create_layer(
0,
0,
"Managers",
UIManager
)

instance_create_layer(
0,
0,
"Managers",
ParticleManager
)


//roomSetup("crane_pond");