/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 3445DA47
/// @DnDArgument : "funcName" "populatePrizeMenu"
function populatePrizeMenu() {	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 38304D1B
	/// @DnDParent : 3445DA47
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10)/// @description Execute Code$(13_10)//For each entry in player inventory$(13_10)	//For each variant that has more than 0 collects$(13_10)	//Display with information $(13_10) var keys = variable_struct_get_names(global.playerInventory);$(13_10) var length = array_length(keys);$(13_10) $(13_10) prizeScrollOffset = 0; $(13_10) prizeArray = []; $(13_10) $(13_10) var panelIndex = 0;$(13_10) var panelRow = 0;$(13_10) var panelColumn = 0; $(13_10) $(13_10) for (var i = 0; i < length; i++){$(13_10)	 $(13_10)	 var inventoryItem = global.playerInventory[$keys[i]];$(13_10)	 $(13_10)	 for (var j = 0; j < 3; j++){$(13_10)		//show_debug_message(keys[i] + " amount: " + global.playerInventory[keys[i]][j]);$(13_10)	$(13_10)		 if (inventoryItem[j] > 0){$(13_10)			 $(13_10)			 var xPosition =  92 + (panelColumn * 158) + (panelColumn + 1)*13; $(13_10)			 //Calculated X position + margin increments$(13_10)			 $(13_10)			 var yPosition = (panelRow * 240) + (panelRow * 13) + 240 + prizeScrollOffset; $(13_10)			 //Calculated Y position + Margin + top margin + offset based off scroll$(13_10)			 $(13_10)			 var newEntry = instance_create_layer($(13_10)			 xPosition, $(13_10)			 yPosition, $(13_10)			 "Instances", $(13_10)			 ui_prizeEntry,$(13_10)				{$(13_10)					prizeName: keys[i],$(13_10)					variant: j$(13_10)				}$(13_10)			 );$(13_10)			$(13_10)$(13_10)			 array_push(prizeArray, newEntry);$(13_10)			 $(13_10)			 panelIndex++;$(13_10)			 $(13_10)			 if (panelIndex%2 == 0){$(13_10)					panelRow++; $(13_10)					panelColumn = 0; $(13_10)			 }$(13_10)			 else {$(13_10)					panelColumn++; $(13_10)			 }$(13_10)				 $(13_10)		 }$(13_10)	 }$(13_10)	 $(13_10) }$(13_10) $(13_10) show_debug_message("done creating prize entries");"
	/// @description Execute Code
	/// @description Execute Code
	//For each entry in player inventory
		//For each variant that has more than 0 collects
		//Display with information 
	 var keys = variable_struct_get_names(global.playerInventory);
	 var length = array_length(keys);
	 
	 prizeScrollOffset = 0; 
	 prizeArray = []; 
	 
	 var panelIndex = 0;
	 var panelRow = 0;
	 var panelColumn = 0; 
	 
	 for (var i = 0; i < length; i++){
		 
		 var inventoryItem = global.playerInventory[$keys[i]];
		 
		 for (var j = 0; j < 3; j++){
			//show_debug_message(keys[i] + " amount: " + global.playerInventory[keys[i]][j]);
		
			 if (inventoryItem[j] > 0){
				 
				 var xPosition =  92 + (panelColumn * 158) + (panelColumn + 1)*13; 
				 //Calculated X position + margin increments
				 
				 var yPosition = (panelRow * 240) + (panelRow * 13) + 240 + prizeScrollOffset; 
				 //Calculated Y position + Margin + top margin + offset based off scroll
				 
				 var newEntry = instance_create_layer(
				 xPosition, 
				 yPosition, 
				 "Instances", 
				 ui_prizeEntry,
					{
						prizeName: keys[i],
						variant: j
					}
				 );
				
	
				 array_push(prizeArray, newEntry);
				 
				 panelIndex++;
				 
				 if (panelIndex%2 == 0){
						panelRow++; 
						panelColumn = 0; 
				 }
				 else {
						panelColumn++; 
				 }
					 
			 }
		 }
		 
	 }
	 
	 show_debug_message("done creating prize entries");}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 69291E4E
/// @DnDArgument : "funcName" "generatePrizeContainer"
/// @DnDArgument : "arg" "prizeName, variant"
function generatePrizeContainer(prizeName, variant) {	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 064CDB06
	/// @DnDParent : 69291E4E
	/// @DnDArgument : "code" "$(13_10)    var containerPanel = flexpanel_create_node({$(13_10)        width: "158",$(13_10)        height: "240",$(13_10)$(13_10)        layerElements: [$(13_10)            {$(13_10)                type: "Instance",$(13_10)                instanceObjectIndex: ui_prizeEntry,$(13_10)                instanceVariables: {$(13_10)                    prizeName: prizeName,$(13_10)                    variant: variant$(13_10)                }$(13_10)            }$(13_10)        ]$(13_10)    });$(13_10)	$(13_10)	show_debug_message("Returning panel");$(13_10)	return containerPanel; "
	
	    var containerPanel = flexpanel_create_node({
	        width: "158",
	        height: "240",
	
	        layerElements: [
	            {
	                type: "Instance",
	                instanceObjectIndex: ui_prizeEntry,
	                instanceVariables: {
	                    prizeName: prizeName,
	                    variant: variant
	                }
	            }
	        ]
	    });
		
		show_debug_message("Returning panel");
		return containerPanel;}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 1854FA66
/// @DnDArgument : "funcName" "oldPrizeMenu"
function oldPrizeMenu() {	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 18DB2708
	/// @DnDParent : 1854FA66
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10)//For each entry in player inventory$(13_10)	//For each variant that has more than 0 collects$(13_10)	//Display with information $(13_10)var UILayer = layer_get_flexpanel_node("UI_prize_menu");$(13_10)var containerPanel = flexpanel_node_get_child(UILayer, "panel_prizes");$(13_10)	$(13_10) var keys = variable_struct_get_names(global.playerInventory);$(13_10) var length = array_length(keys);$(13_10) $(13_10) var panelIndex = 0;$(13_10) $(13_10) for (var i = 0; i < length; i++){$(13_10)	 $(13_10)	 var inventoryItem = global.playerInventory[$keys[i]];$(13_10)	 $(13_10)	 for (var j = 0; j < 3; j++){$(13_10)		//show_debug_message(keys[i] + " amount: " + global.playerInventory[keys[i]][j]);$(13_10)	$(13_10)		 if (inventoryItem[j] > 0){$(13_10)			 $(13_10)			 var addPanel = generatePrizeContainer(keys[i], j); $(13_10)			 flexpanel_node_insert_child(containerPanel, addPanel, panelIndex);$(13_10)			 panelIndex++;$(13_10)			 $(13_10)		 }$(13_10)	 }$(13_10)	 $(13_10) }"
	/// @description Execute Code
	//For each entry in player inventory
		//For each variant that has more than 0 collects
		//Display with information 
	var UILayer = layer_get_flexpanel_node("UI_prize_menu");
	var containerPanel = flexpanel_node_get_child(UILayer, "panel_prizes");
		
	 var keys = variable_struct_get_names(global.playerInventory);
	 var length = array_length(keys);
	 
	 var panelIndex = 0;
	 
	 for (var i = 0; i < length; i++){
		 
		 var inventoryItem = global.playerInventory[$keys[i]];
		 
		 for (var j = 0; j < 3; j++){
			//show_debug_message(keys[i] + " amount: " + global.playerInventory[keys[i]][j]);
		
			 if (inventoryItem[j] > 0){
				 
				 var addPanel = generatePrizeContainer(keys[i], j); 
				 flexpanel_node_insert_child(containerPanel, addPanel, panelIndex);
				 panelIndex++;
				 
			 }
		 }
		 
	 }}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 6155FB95
/// @DnDArgument : "funcName" "updateMoneyNode"
/// @DnDArgument : "arg" "roomName"
function updateMoneyNode(roomName) {	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 0914AEE8
	/// @DnDParent : 6155FB95
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10)var UILayerName = string("UI_" + roomName);$(13_10)var flexPanelName = string("panel_" + roomName);$(13_10)$(13_10)var UILayer = layer_get_flexpanel_node(UILayerName);$(13_10)$(13_10)var containerPanel = flexpanel_node_get_child(UILayer, flexPanelName);$(13_10)$(13_10)var textPanel = flexpanel_node_get_child(containerPanel, "panel_moneyInfo");$(13_10)$(13_10)if (textPanel) {$(13_10)var moneyPanel = flexpanel_node_get_child(textPanel, "panel_moneyCounter");$(13_10)$(13_10)var textStruct = flexpanel_node_get_struct(moneyPanel); $(13_10)var textID = textStruct.layerElements[0].elementId;$(13_10)$(13_10)layer_text_text(textID, global.money);$(13_10)}$(13_10)"
	/// @description Execute Code
	var UILayerName = string("UI_" + roomName);
	var flexPanelName = string("panel_" + roomName);
	
	var UILayer = layer_get_flexpanel_node(UILayerName);
	
	var containerPanel = flexpanel_node_get_child(UILayer, flexPanelName);
	
	var textPanel = flexpanel_node_get_child(containerPanel, "panel_moneyInfo");
	
	if (textPanel) {
	var moneyPanel = flexpanel_node_get_child(textPanel, "panel_moneyCounter");
	
	var textStruct = flexpanel_node_get_struct(moneyPanel); 
	var textID = textStruct.layerElements[0].elementId;
	
	layer_text_text(textID, global.money);
	}}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 3ABEBAC4
/// @DnDArgument : "funcName" "updateDropButton"
function updateDropButton() {	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 0EDAC3AF
	/// @DnDParent : 3ABEBAC4
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10)if (gameControls){$(13_10)	$(13_10)gameControls.dropButton.image_index = 0; $(13_10)}"
	/// @description Execute Code
	if (gameControls){
		
	gameControls.dropButton.image_index = 0; 
	}}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 74E87635
/// @DnDArgument : "funcName" "destroyGameControls"
function destroyGameControls() {	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 4AB50F4E
	/// @DnDParent : 74E87635
	/// @DnDArgument : "code" "$(13_10)if (gameControls != noone){$(13_10)	show_debug_message("Destroying controls in method");$(13_10)	gameControls.destroySelf();$(13_10)	gameControls = noone; $(13_10)}"
	
	if (gameControls != noone){
		show_debug_message("Destroying controls in method");
		gameControls.destroySelf();
		gameControls = noone; 
	}}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 7C350891
/// @DnDArgument : "funcName" "createGameControls"
function createGameControls() {	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 1855AFB1
	/// @DnDParent : 7C350891
	/// @DnDArgument : "code" "	/// @description Execute Code$(13_10)//destroyGameControls();$(13_10)$(13_10)show_debug_message("Create controls");$(13_10)$(13_10)	gameControls = instance_create_layer($(13_10)	room_width / 2, $(13_10)	y - 32, $(13_10)	"Instances", $(13_10)	ui_gameControls$(13_10)	);$(13_10)	$(13_10)show_debug_message("Create controls done");$(13_10)"
		/// @description Execute Code
	//destroyGameControls();
	
	show_debug_message("Create controls");
	
		gameControls = instance_create_layer(
		room_width / 2, 
		y - 32, 
		"Instances", 
		ui_gameControls
		);
		
	show_debug_message("Create controls done");}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 294CA1D6
/// @DnDArgument : "funcName" "createPlayCounter"
function createPlayCounter() {	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 232FC5A0
	/// @DnDParent : 294CA1D6
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10)show_debug_message("Create play timer");$(13_10)$(13_10)destroyPlayCounter(); $(13_10)$(13_10)show_debug_message("Done destroying");$(13_10)$(13_10)playCounter = instance_create_layer($(13_10)5 * (room_width/6),$(13_10)32, $(13_10)"Instances", $(13_10)ui_playCounter$(13_10));$(13_10)"
	/// @description Execute Code
	show_debug_message("Create play timer");
	
	destroyPlayCounter(); 
	
	show_debug_message("Done destroying");
	
	playCounter = instance_create_layer(
	5 * (room_width/6),
	32, 
	"Instances", 
	ui_playCounter
	);}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 55290D89
/// @DnDArgument : "funcName" "destroyPlayCounter"
function destroyPlayCounter() {	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 7F2A2F5F
	/// @DnDParent : 55290D89
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10)if (playCounter != noone){$(13_10)	instance_destroy(playCounter);$(13_10)	playCounter = noone; $(13_10)}"
	/// @description Execute Code
	if (playCounter != noone){
		instance_destroy(playCounter);
		playCounter = noone; 
	}}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 1A5D58CC
/// @DnDArgument : "funcName" "showGameOverMenu"
function showGameOverMenu() {	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 1C5C35B9
	/// @DnDParent : 1A5D58CC
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)if (popupActive == false)$(13_10){$(13_10)popupActive = true; $(13_10)$(13_10)var gameOverMenu = instance_create_layer($(13_10)room_width/2,$(13_10)room_height/2, $(13_10)"Popups", $(13_10)ui_gameFinishedMenu$(13_10));$(13_10)$(13_10)}"
	/// @description Execute Code
	
	if (popupActive == false)
	{
	popupActive = true; 
	
	var gameOverMenu = instance_create_layer(
	room_width/2,
	room_height/2, 
	"Popups", 
	ui_gameFinishedMenu
	);
	
	}}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 3AC6E653
/// @DnDArgument : "funcName" "destroyPlayTimer"
function destroyPlayTimer() {	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 33360B34
	/// @DnDParent : 3AC6E653
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10)if (playTimer != noone){$(13_10)	instance_destroy(playTimer);$(13_10)	playTimer = noone; $(13_10)}"
	/// @description Execute Code
	if (playTimer != noone){
		instance_destroy(playTimer);
		playTimer = noone; 
	}}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 59FC6745
/// @DnDArgument : "funcName" "createPlayTimer"
/// @DnDArgument : "arg" "roomName"
function createPlayTimer(roomName) {	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 737BE31B
	/// @DnDParent : 59FC6745
	/// @DnDArgument : "code" "$(13_10)destroyPlayTimer(); $(13_10)$(13_10)playTimer = instance_create_layer($(13_10)room_width/2,$(13_10)32, $(13_10)"Instances", $(13_10)ui_playTimer$(13_10));$(13_10)"
	
	destroyPlayTimer(); 
	
	playTimer = instance_create_layer(
	room_width/2,
	32, 
	"Instances", 
	ui_playTimer
	);}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 426E7B06
/// @DnDArgument : "funcName" "showPauseMenu"
function showPauseMenu() {	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 2D4C809E
	/// @DnDParent : 426E7B06
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10)/// @description Execute Code$(13_10)$(13_10)if (popupActive == false)$(13_10){$(13_10)popupActive = true; $(13_10)$(13_10)var pauseMenu = instance_create_layer($(13_10)room_width/2,$(13_10)room_height/2, $(13_10)"Popups", $(13_10)ui_pauseMenu$(13_10));$(13_10)$(13_10)}"
	/// @description Execute Code
	/// @description Execute Code
	
	if (popupActive == false)
	{
	popupActive = true; 
	
	var pauseMenu = instance_create_layer(
	room_width/2,
	room_height/2, 
	"Popups", 
	ui_pauseMenu
	);
	
	}}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 58F43A42
/// @DnDArgument : "funcName" "showRoomUI"
/// @DnDArgument : "arg" "roomName"
function showRoomUI(roomName) {	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 18DE3281
	/// @DnDParent : 58F43A42
	/// @DnDArgument : "code" "$(13_10)var layerName = string("UI_" + roomName);$(13_10)var layerID = layer_get_id(layerName); $(13_10)$(13_10)if (roomName == "prize_menu"){$(13_10)	alarm[0] = 1; $(13_10)}$(13_10)$(13_10)if (global.roomDatabase[$roomName].type == "menu"){$(13_10)	updateMoneyNode(roomName); $(13_10)}$(13_10)$(13_10)layer_set_visible(layerID, true); $(13_10)"
	
	var layerName = string("UI_" + roomName);
	var layerID = layer_get_id(layerName); 
	
	if (roomName == "prize_menu"){
		alarm[0] = 1; 
	}
	
	if (global.roomDatabase[$roomName].type == "menu"){
		updateMoneyNode(roomName); 
	}
	
	layer_set_visible(layerID, true);}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 272A8244
/// @DnDArgument : "funcName" "hideRoomUI"
/// @DnDArgument : "arg" "roomName"
function hideRoomUI(roomName) {	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 72F83132
	/// @DnDParent : 272A8244
	/// @DnDArgument : "code" " $(13_10)var layerName = string("UI_" + roomName);$(13_10)var layerID = layer_get_id(layerName); $(13_10)$(13_10)layer_set_visible(layerID, false); $(13_10)$(13_10)destroyGameControls(); "
	 
	var layerName = string("UI_" + roomName);
	var layerID = layer_get_id(layerName); 
	
	layer_set_visible(layerID, false); 
	
	destroyGameControls();}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 2BEDEFE9
/// @DnDArgument : "funcName" "popupPrizeWindow"
/// @DnDArgument : "arg" "prizeName, variantNum"
function popupPrizeWindow(prizeName, variantNum) {	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 26BD22D4
	/// @DnDParent : 2BEDEFE9
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)if (popupActive == false)$(13_10){$(13_10)popupActive = true; $(13_10)$(13_10)var uiPopup = instance_create_layer($(13_10)room_width/2,$(13_10)room_height/2, $(13_10)"Popups", $(13_10)ui_prizePopup$(13_10));$(13_10)$(13_10)ParticleManager.createPrizeParticle(room_width/2,$(13_10)room_height/2);$(13_10)$(13_10)uiPopup.prizeName = prizeName;$(13_10)uiPopup.variant = variantNum;$(13_10)}"
	/// @description Execute Code
	
	if (popupActive == false)
	{
	popupActive = true; 
	
	var uiPopup = instance_create_layer(
	room_width/2,
	room_height/2, 
	"Popups", 
	ui_prizePopup
	);
	
	ParticleManager.createPrizeParticle(room_width/2,
	room_height/2);
	
	uiPopup.prizeName = prizeName;
	uiPopup.variant = variantNum;
	}}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1A55FA9A
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)persistent = true; $(13_10)$(13_10)UIManager.updateMoneyNode(GameManager.currentRoomName); "
/// @description Execute Code
persistent = true; 

UIManager.updateMoneyNode(GameManager.currentRoomName);