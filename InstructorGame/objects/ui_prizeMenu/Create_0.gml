/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 72E67A73
/// @DnDArgument : "funcName" "previousPage"
function previousPage() {	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 1A184BC9
	/// @DnDParent : 72E67A73
	/// @DnDArgument : "code" "currentPage -= 1; $(13_10)UIManager.currentPrizePage = currentPage; $(13_10)$(13_10)resetMenu(); $(13_10)createPrizeMenu(); "
	currentPage -= 1; 
	UIManager.currentPrizePage = currentPage; 
	
	resetMenu(); 
	createPrizeMenu();}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 08802D48
/// @DnDArgument : "funcName" "nextPage"
function nextPage() {	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 794CC709
	/// @DnDParent : 08802D48
	/// @DnDArgument : "code" "currentPage += 1;$(13_10)UIManager.currentPrizePage = currentPage; $(13_10)$(13_10)resetMenu(); $(13_10)createPrizeMenu(); "
	currentPage += 1;
	UIManager.currentPrizePage = currentPage; 
	
	resetMenu(); 
	createPrizeMenu();}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 7FBE632B
/// @DnDArgument : "funcName" "resetMenu"
function resetMenu() {	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 5A9D6A8C
	/// @DnDParent : 7FBE632B
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)variantArray = []; $(13_10)prizeArray = []; $(13_10)$(13_10)with (ui_prizeEntry){$(13_10)	destroySelf(); $(13_10)}$(13_10)$(13_10)if (nextButton != noone){$(13_10)	instance_destroy(nextButton); $(13_10)	nextButton = noone;$(13_10)}$(13_10)$(13_10)if (prevButton != noone){$(13_10)	instance_destroy(prevButton); $(13_10)	prevButton = noone;$(13_10)}$(13_10)$(13_10)instances = []; $(13_10)$(13_10)show_debug_message("Resetting menu");"
	/// @description Execute Code
	
	variantArray = []; 
	prizeArray = []; 
	
	with (ui_prizeEntry){
		destroySelf(); 
	}
	
	if (nextButton != noone){
		instance_destroy(nextButton); 
		nextButton = noone;
	}
	
	if (prevButton != noone){
		instance_destroy(prevButton); 
		prevButton = noone;
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
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10)/// @description Execute Code$(13_10)/// @description Execute Code$(13_10)//For each entry in player inventory$(13_10)	//For each variant that has more than 0 collects$(13_10)	//Display with information $(13_10) var keys = variable_struct_get_names(global.playerInventory);$(13_10) var length = array_length(keys);$(13_10) $(13_10) currentPage = UIManager.currentPrizePage;$(13_10) $(13_10) prizeArray = [];$(13_10) variantArray = [];$(13_10) instances = []; $(13_10) $(13_10) var panelIndex = 0;$(13_10) var panelRow = 0;$(13_10) var panelColumn = 0; $(13_10) $(13_10) show_debug_message("Adding info to array");$(13_10) $(13_10) for (var i = 0; i < length; i++){$(13_10)	 $(13_10)	 var inventoryItem = global.playerInventory[$keys[i]];$(13_10)	 $(13_10)	 for (var j = 0; j < 3; j++){$(13_10)		 if (inventoryItem[j] > 0){$(13_10)			array_push(prizeArray, keys[i]);	 $(13_10)			array_push(variantArray, j); $(13_10)		 }$(13_10)	 }$(13_10)	 $(13_10) }$(13_10) $(13_10) var arrayLength = array_length(prizeArray); $(13_10) $(13_10) /*If the length of the array is less than the minimum amount needed$(13_10) to display on the next page*/$(13_10) $(13_10) if ((arrayLength < (currentPage * 4) - 4)){$(13_10)	 currentPage -= 1;$(13_10)	 UIManager.currentPrizePage = currentPage; $(13_10)	 $(13_10)	 if (currentPage < 1){$(13_10)		 currentPage = 1;$(13_10)		 UIManager.currentPrizePage = currentPage; $(13_10)	 }$(13_10) }$(13_10) $(13_10)$(13_10) show_debug_message("Creating instances loop");$(13_10) $(13_10) if (arrayLength > 0){$(13_10) for (var i = ((currentPage * 4) - 4); i < (currentPage * 4); i++){$(13_10)	 $(13_10)	 	 if (i > arrayLength - 1){$(13_10)			 break; $(13_10)		 }$(13_10)		 $(13_10)			 var xPosition =  92 + (panelColumn * 158) + (panelColumn + 1)*13; $(13_10)			 //Calculated X position + margin increments$(13_10)			 $(13_10)			 var yPosition = (panelRow * 200) + (panelRow * 13) + 240; $(13_10)			 //Calculated Y position + Margin + top margin + offset based off scroll $(13_10)		$(13_10)			 var newEntry = instance_create_layer($(13_10)			 xPosition, $(13_10)			 yPosition, $(13_10)			 "Instances", $(13_10)			 ui_prizeEntry,$(13_10)				{$(13_10)					prizeName: prizeArray[i],$(13_10)					variant: variantArray[i]$(13_10)				}$(13_10)			 );	$(13_10)			 $(13_10)			 array_push(instances, newEntry);$(13_10)			 $(13_10)			 panelIndex++;$(13_10)			 $(13_10)			 if (panelIndex%2 == 0){$(13_10)					panelRow++; $(13_10)					panelColumn = 0; $(13_10)			 }$(13_10)			 else {$(13_10)					panelColumn++; $(13_10)			 }$(13_10) }$(13_10) }$(13_10) else {$(13_10)	 $(13_10)	 show_debug_message("No prizes owned");$(13_10) }$(13_10) $(13_10) if ((currentPage * 4) < arrayLength){$(13_10)	 nextButton = instance_create_layer($(13_10)	 290,$(13_10)	 630,$(13_10)	 "Instances",$(13_10)	 ui_prizeMenuNextButton,$(13_10)	 {$(13_10)		 parentObject: self$(13_10)	 }$(13_10)	 );$(13_10) }$(13_10) $(13_10) if (currentPage > 1){$(13_10)	 prevButton = instance_create_layer($(13_10)	 100,$(13_10)	 630,$(13_10)	 "Instances",$(13_10)	 ui_prizeMenuPrevButton,$(13_10)	 {$(13_10)		 parentObject: self$(13_10)	 }$(13_10)	 );$(13_10) }"
	/// @description Execute Code
	/// @description Execute Code
	/// @description Execute Code
	//For each entry in player inventory
		//For each variant that has more than 0 collects
		//Display with information 
	 var keys = variable_struct_get_names(global.playerInventory);
	 var length = array_length(keys);
	 
	 currentPage = UIManager.currentPrizePage;
	 
	 prizeArray = [];
	 variantArray = [];
	 instances = []; 
	 
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
	 
	 var arrayLength = array_length(prizeArray); 
	 
	 /*If the length of the array is less than the minimum amount needed
	 to display on the next page*/
	 
	 if ((arrayLength < (currentPage * 4) - 4)){
		 currentPage -= 1;
		 UIManager.currentPrizePage = currentPage; 
		 
		 if (currentPage < 1){
			 currentPage = 1;
			 UIManager.currentPrizePage = currentPage; 
		 }
	 }
	 
	
	 show_debug_message("Creating instances loop");
	 
	 if (arrayLength > 0){
	 for (var i = ((currentPage * 4) - 4); i < (currentPage * 4); i++){
		 
		 	 if (i > arrayLength - 1){
				 break; 
			 }
			 
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
	 }
	 }
	 else {
		 
		 show_debug_message("No prizes owned");
	 }
	 
	 if ((currentPage * 4) < arrayLength){
		 nextButton = instance_create_layer(
		 290,
		 630,
		 "Instances",
		 ui_prizeMenuNextButton,
		 {
			 parentObject: self
		 }
		 );
	 }
	 
	 if (currentPage > 1){
		 prevButton = instance_create_layer(
		 100,
		 630,
		 "Instances",
		 ui_prizeMenuPrevButton,
		 {
			 parentObject: self
		 }
		 );
	 }/**/}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5EFA8D1D
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)createPrizeMenu(); "
/// @description Execute Code
createPrizeMenu();