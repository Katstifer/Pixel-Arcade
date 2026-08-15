/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 7FBE632B
/// @DnDArgument : "funcName" "resetMenu"
function resetMenu() {	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 5A9D6A8C
	/// @DnDParent : 7FBE632B
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)variantArray = []; $(13_10)prizeArray = []; $(13_10)$(13_10)with (ui_prizeEntry){$(13_10)	destroySelf(); $(13_10)}$(13_10)$(13_10)instances = []; $(13_10)$(13_10)show_debug_message("Resetting menu");"
	/// @description Execute Code
	
	variantArray = []; 
	prizeArray = []; 
	
	with (ui_prizeEntry){
		destroySelf(); 
	}
	
	instances = []; 
	
	show_debug_message("Resetting menu");}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 605FE026
/// @DnDArgument : "funcName" "createPrizeMenu"
function createPrizeMenu() {	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 21D2EF66
	/// @DnDParent : 605FE026
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10)/// @description Execute Code$(13_10)/// @description Execute Code$(13_10)//For each entry in player inventory$(13_10)	//For each variant that has more than 0 collects$(13_10)	//Display with information $(13_10) var keys = variable_struct_get_names(global.playerInventory);$(13_10) var length = array_length(keys);$(13_10) $(13_10) prizeArray = [];$(13_10) variantArray = [];$(13_10) instances = []; $(13_10) $(13_10) currentPage = 1; $(13_10) $(13_10) var panelIndex = 0;$(13_10) var panelRow = 0;$(13_10) var panelColumn = 0; $(13_10) $(13_10) show_debug_message("Adding info to array");$(13_10) $(13_10) for (var i = 0; i < length; i++){$(13_10)	 $(13_10)	 var inventoryItem = global.playerInventory[$keys[i]];$(13_10)	 $(13_10)	 for (var j = 0; j < 3; j++){$(13_10)		 if (inventoryItem[j] > 0){$(13_10)			array_push(prizeArray, keys[i]);	 $(13_10)			array_push(variantArray, j); $(13_10)		 }$(13_10)	 }$(13_10)	 $(13_10) }$(13_10) $(13_10) show_debug_message("Creating instances loop");$(13_10) $(13_10) for (var i = ((currentPage * 4) - 4); i < (currentPage * 4); i++){$(13_10)	  var xPosition =  92 + (panelColumn * 158) + (panelColumn + 1)*13; $(13_10)			 //Calculated X position + margin increments$(13_10)			 $(13_10)			 var yPosition = (panelRow * 200) + (panelRow * 13) + 240; $(13_10)			 //Calculated Y position + Margin + top margin + offset based off scroll$(13_10)			 $(13_10)		$(13_10)			 var newEntry = instance_create_layer($(13_10)			 xPosition, $(13_10)			 yPosition, $(13_10)			 "Instances", $(13_10)			 ui_prizeEntry,$(13_10)				{$(13_10)					prizeName: prizeArray[i],$(13_10)					variant: variantArray[i]$(13_10)				}$(13_10)			 );	$(13_10)			 $(13_10)			 array_push(instances, newEntry);$(13_10)			 $(13_10)			 panelIndex++;$(13_10)			 $(13_10)			 if (panelIndex%2 == 0){$(13_10)					panelRow++; $(13_10)					panelColumn = 0; $(13_10)			 }$(13_10)			 else {$(13_10)					panelColumn++; $(13_10)			 }$(13_10) }$(13_10) "
	/// @description Execute Code
	/// @description Execute Code
	/// @description Execute Code
	//For each entry in player inventory
		//For each variant that has more than 0 collects
		//Display with information 
	 var keys = variable_struct_get_names(global.playerInventory);
	 var length = array_length(keys);
	 
	 prizeArray = [];
	 variantArray = [];
	 instances = []; 
	 
	 currentPage = 1; 
	 
	 var panelIndex = 0;
	 var panelRow = 0;
	 var panelColumn = 0; 
	 
	 show_debug_message("Adding info to array");
	 
	 for (var i = 0; i < length; i++){
		 
		 var inventoryItem = global.playerInventory[$keys[i]];
		 
		 for (var j = 0; j < 3; j++){
			 if (inventoryItem[j] > 0){
				array_push(prizeArray, keys[i]);	 
				array_push(variantArray, j); 
			 }
		 }
		 
	 }
	 
	 show_debug_message("Creating instances loop");
	 
	 for (var i = ((currentPage * 4) - 4); i < (currentPage * 4); i++){
		  var xPosition =  92 + (panelColumn * 158) + (panelColumn + 1)*13; 
				 //Calculated X position + margin increments
				 
				 var yPosition = (panelRow * 200) + (panelRow * 13) + 240; 
				 //Calculated Y position + Margin + top margin + offset based off scroll
				 
			
				 var newEntry = instance_create_layer(
				 xPosition, 
				 yPosition, 
				 "Instances", 
				 ui_prizeEntry,
					{
						prizeName: prizeArray[i],
						variant: variantArray[i]
					}
				 );	
				 
				 array_push(instances, newEntry);
				 
				 panelIndex++;
				 
				 if (panelIndex%2 == 0){
						panelRow++; 
						panelColumn = 0; 
				 }
				 else {
						panelColumn++; 
				 }
	 }}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5EFA8D1D
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)createPrizeMenu(); "
/// @description Execute Code
createPrizeMenu();