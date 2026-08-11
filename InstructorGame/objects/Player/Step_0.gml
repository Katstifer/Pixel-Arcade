/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 66FEB849
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)if (global.gamePaused){$(13_10)	exit; $(13_10)}$(13_10)$(13_10)if (isDropping == false){$(13_10)currentPlayTime -= (delta_time / 1000000); $(13_10)}$(13_10)$(13_10)if (currentPlayTime < 0){$(13_10)	$(13_10)	if (timerHitZero == false){$(13_10)		show_debug_message("Timer hit zero in step"); $(13_10)		timerHitZero = true; $(13_10)		isDropping = true; $(13_10)	}$(13_10)	$(13_10)	currentPlayTime = 0; $(13_10)}"
/// @description Execute Code
if (global.gamePaused){
	exit; 
}

if (isDropping == false){
currentPlayTime -= (delta_time / 1000000); 
}

if (currentPlayTime < 0){
	
	if (timerHitZero == false){
		show_debug_message("Timer hit zero in step"); 
		timerHitZero = true; 
		isDropping = true; 
	}
	
	currentPlayTime = 0; 
}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 55FDD46F
/// @DnDArgument : "funcName" "grabPrize"
function grabPrize() {	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 5C37630B
	/// @DnDParent : 55FDD46F
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)var prize = collision_circle(x, y + 32, 32, obj_prize_parent, false, true); $(13_10)show_debug_message(prize);$(13_10)$(13_10)if (prize != noone && grabFinished == false){$(13_10)	carriedPrize = prize; $(13_10)	carriedPrize.attachToClaw(self, x, y); $(13_10)}"
	/// @description Execute Code
	
	var prize = collision_circle(x, y + 32, 32, obj_prize_parent, false, true); 
	show_debug_message(prize);
	
	if (prize != noone && grabFinished == false){
		carriedPrize = prize; 
		carriedPrize.attachToClaw(self, x, y); 
	}}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 525061CA
/// @DnDArgument : "funcName" "carryPrize"
function carryPrize() {	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 592D7CE4
	/// @DnDParent : 525061CA
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)currentSpeed = maxSpeed * movementDirection; $(13_10)phy_speed_x = currentSpeed; $(13_10)$(13_10)if (x <= 0 - (390/2)){$(13_10)	movementDirection = 1; $(13_10)	$(13_10)		if (instance_exists(carriedPrize)){$(13_10)		carriedPrize.prizeWon = true;$(13_10)		carriedPrize = noone; $(13_10)	}$(13_10)	$(13_10)}$(13_10)$(13_10)if (movementDirection > -1 && x >= room_width/2){$(13_10)	x = room_width/2; $(13_10)	$(13_10)	currentSpeed = 0; $(13_10)	verticalDirection = 1; $(13_10)	$(13_10)	isDropping = false; $(13_10)	hasGrabbed = false; $(13_10)	grabFinished = false;$(13_10)	timerHitZero = false; $(13_10)	$(13_10)	currentPlayTime = maxPlayTime; $(13_10)	GameManager.updatePlays(); $(13_10)	UIManager.updateDropButton(); $(13_10)}"
	/// @description Execute Code
	
	currentSpeed = maxSpeed * movementDirection; 
	phy_speed_x = currentSpeed; 
	
	if (x <= 0 - (390/2)){
		movementDirection = 1; 
		
			if (instance_exists(carriedPrize)){
			carriedPrize.prizeWon = true;
			carriedPrize = noone; 
		}
		
	}
	
	if (movementDirection > -1 && x >= room_width/2){
		x = room_width/2; 
		
		currentSpeed = 0; 
		verticalDirection = 1; 
		
		isDropping = false; 
		hasGrabbed = false; 
		grabFinished = false;
		timerHitZero = false; 
		
		currentPlayTime = maxPlayTime; 
		GameManager.updatePlays(); 
		UIManager.updateDropButton(); 
	}}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 3F5C2A8D
/// @DnDArgument : "funcName" "grabClaw"
function grabClaw() {	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 7E16EBAC
	/// @DnDParent : 3F5C2A8D
	/// @DnDArgument : "code" "//STARTS WHEN SPACE IS PRESSED A SECOND TIME OR A SPECIFIC Y IS REACHED$(13_10)$(13_10)//Initiate animation$(13_10)//hook onto prizes$(13_10)//attach prizes to claw?$(13_10)$(13_10)//Once done, grab finished$(13_10)$(13_10)if (grabTimer > 0){$(13_10)	phy_speed_y = 0; $(13_10)	grabTimer -= delta_time;$(13_10)	$(13_10)	if (grabTimer <= 2.0 && grabTimer >= 1.5)$(13_10)	{$(13_10)		image_index = 1;$(13_10)	}$(13_10)	else {$(13_10)		image_index = 2;$(13_10)	}$(13_10)}$(13_10)else {$(13_10)	grabPrize(); $(13_10)	grabFinished = true; $(13_10)	movementDirection = -1;$(13_10)}"
	//STARTS WHEN SPACE IS PRESSED A SECOND TIME OR A SPECIFIC Y IS REACHED
	
	//Initiate animation
	//hook onto prizes
	//attach prizes to claw?
	
	//Once done, grab finished
	
	if (grabTimer > 0){
		phy_speed_y = 0; 
		grabTimer -= delta_time;
		
		if (grabTimer <= 2.0 && grabTimer >= 1.5)
		{
			image_index = 1;
		}
		else {
			image_index = 2;
		}
	}
	else {
		grabPrize(); 
		grabFinished = true; 
		movementDirection = -1;
	}}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 5DB3AB1D
/// @DnDArgument : "funcName" "dropClaw"
function dropClaw() {	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 7A508C80
	/// @DnDParent : 5DB3AB1D
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)//DURING THE CLAW DROP$(13_10)//If the claw is able to grab currently$(13_10)	//The key press has the ability to change whether it grabs$(13_10)	//Otherwise, if it reaches a certain Y level it automatically grabs$(13_10)if (!hasGrabbed){$(13_10)	verticalDirection = 1; $(13_10)	$(13_10)	if (y >= (room_height - (sprite_height))){$(13_10)		startClawGrab(); $(13_10)	} $(13_10)$(13_10)	/*$(13_10)	else if ( collision_circle(x, y + 32, 16, obj_prize_parent, false, true)){$(13_10)		hasGrabbed = true; $(13_10)		grabTimer = 2.0;$(13_10)	}*/$(13_10)}$(13_10)$(13_10)//If the claw grab has started, but not finished, the grabClaw() logic should run$(13_10)	//The function should end early so that it does not move$(13_10)if (hasGrabbed && !grabFinished){$(13_10)	grabClaw();$(13_10)	return; $(13_10)}$(13_10)$(13_10)$(13_10)//If the claw grab is FINISHED$(13_10)	//The direction changes$(13_10)if (hasGrabbed && grabFinished){$(13_10)	verticalDirection = -1; $(13_10)}$(13_10)$(13_10)//Claw should move every frame, direction decided by variable$(13_10)verticalSpeed = maxSpeed * verticalDirection; $(13_10)$(13_10)phy_speed_y = verticalSpeed; $(13_10)$(13_10)//If the claw reaches the top again and the grab is finished,$(13_10)	//Execute the carry prize function $(13_10)if (grabFinished && y <= (128)){$(13_10)	phy_speed_y = 0; $(13_10)	$(13_10)	if (y != 128){$(13_10)		y = 128; $(13_10)	}$(13_10)	carryPrize();$(13_10)	return; $(13_10)}$(13_10)"
	/// @description Execute Code
	
	//DURING THE CLAW DROP
	//If the claw is able to grab currently
		//The key press has the ability to change whether it grabs
		//Otherwise, if it reaches a certain Y level it automatically grabs
	if (!hasGrabbed){
		verticalDirection = 1; 
		
		if (y >= (room_height - (sprite_height))){
			startClawGrab(); 
		} 
	
		/*
		else if ( collision_circle(x, y + 32, 16, obj_prize_parent, false, true)){
			hasGrabbed = true; 
			grabTimer = 2.0;
		}*/
	}
	
	//If the claw grab has started, but not finished, the grabClaw() logic should run
		//The function should end early so that it does not move
	if (hasGrabbed && !grabFinished){
		grabClaw();
		return; 
	}
	
	
	//If the claw grab is FINISHED
		//The direction changes
	if (hasGrabbed && grabFinished){
		verticalDirection = -1; 
	}
	
	//Claw should move every frame, direction decided by variable
	verticalSpeed = maxSpeed * verticalDirection; 
	
	phy_speed_y = verticalSpeed; 
	
	//If the claw reaches the top again and the grab is finished,
		//Execute the carry prize function 
	if (grabFinished && y <= (128)){
		phy_speed_y = 0; 
		
		if (y != 128){
			y = 128; 
		}
		carryPrize();
		return; 
	}
	/**/}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 3422893C
/// @DnDArgument : "funcName" "isInBounds"
function isInBounds() {	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 18FE135D
	/// @DnDParent : 3422893C
	/// @DnDArgument : "var" "x"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "room_width - (sprite_width )/2"
	if(x > room_width - (sprite_width )/2){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 24DD876D
		/// @DnDParent : 18FE135D
		/// @DnDArgument : "expr" "room_width- (sprite_width )/2"
		/// @DnDArgument : "var" "x"
		x = room_width- (sprite_width )/2;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6BD08ADC
		/// @DnDParent : 18FE135D
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "var" "movementDirection"
		movementDirection = -1;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0F110EC4
		/// @DnDParent : 18FE135D
		/// @DnDArgument : "expr" "0.1 * movementDirection"
		/// @DnDArgument : "var" "currentSpeed"
		currentSpeed = 0.1 * movementDirection;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6BC69AEC
		/// @DnDParent : 18FE135D
		/// @DnDArgument : "expr" "currentSpeed"
		/// @DnDArgument : "var" "phy_speed_x"
		phy_speed_x = currentSpeed;
	
		/// @DnDAction : YoYo Games.Common.Return
		/// @DnDVersion : 1
		/// @DnDHash : 0BAFD8F5
		/// @DnDParent : 18FE135D
		/// @DnDArgument : "value" "false"
		return false;}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1EA1E147
	/// @DnDParent : 3422893C
	/// @DnDArgument : "var" "x"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "0 + (sprite_width)/2"
	if(x < 0 + (sprite_width)/2){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0C822843
		/// @DnDParent : 1EA1E147
		/// @DnDArgument : "expr" "0 + (sprite_width)/2"
		/// @DnDArgument : "var" "x"
		x = 0 + (sprite_width)/2;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1EAC01ED
		/// @DnDParent : 1EA1E147
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "movementDirection"
		movementDirection = 1;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5C4F9D6B
		/// @DnDParent : 1EA1E147
		/// @DnDArgument : "expr" "0.1 * movementDirection"
		/// @DnDArgument : "var" "currentSpeed"
		currentSpeed = 0.1 * movementDirection;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1F3B7EDE
		/// @DnDParent : 1EA1E147
		/// @DnDArgument : "expr" "currentSpeed"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "phy_speed_x"
		phy_speed_x += currentSpeed;
	
		/// @DnDAction : YoYo Games.Common.Return
		/// @DnDVersion : 1
		/// @DnDHash : 289D2E0F
		/// @DnDParent : 1EA1E147
		/// @DnDArgument : "value" "false"
		return false;}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 68F5960D
	/// @DnDParent : 3422893C
	else{	/// @DnDAction : YoYo Games.Common.Return
		/// @DnDVersion : 1
		/// @DnDHash : 5D457392
		/// @DnDParent : 68F5960D
		/// @DnDArgument : "value" "true"
		return true;}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4C41C815
/// @DnDArgument : "var" "isDropping"
/// @DnDArgument : "value" "false"
if(isDropping == false){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4D421661
	/// @DnDParent : 4C41C815
	/// @DnDArgument : "var" "image_index"
	image_index = 0;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3AB454C6
	/// @DnDParent : 4C41C815
	/// @DnDArgument : "var" "isInBounds()"
	/// @DnDArgument : "value" "true"
	if(isInBounds() == true){	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
		/// @DnDVersion : 1
		/// @DnDHash : 4655C75D
		/// @DnDParent : 3AB454C6
		/// @DnDArgument : "key" "vk_right"
		var l4655C75D_0;l4655C75D_0 = keyboard_check(vk_right);if (l4655C75D_0){	/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 7DE8BCDE
			/// @DnDParent : 4655C75D
			/// @DnDArgument : "function" "playerMoveRight"
			playerMoveRight();}
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
		/// @DnDVersion : 1
		/// @DnDHash : 6A643AF6
		/// @DnDParent : 3AB454C6
		/// @DnDArgument : "key" "vk_left"
		var l6A643AF6_0;l6A643AF6_0 = keyboard_check(vk_left);if (l6A643AF6_0){	/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 1CBF9594
			/// @DnDParent : 6A643AF6
			/// @DnDArgument : "function" "playerMoveLeft"
			playerMoveLeft();}}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 31F7ECC2
	/// @DnDParent : 4C41C815
	/// @DnDArgument : "expr" "lerp(currentSpeed, 0, 0.1)"
	/// @DnDArgument : "var" "currentSpeed"
	currentSpeed = lerp(currentSpeed, 0, 0.1);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2E2CFAA9
	/// @DnDParent : 4C41C815
	/// @DnDArgument : "expr" "currentSpeed"
	/// @DnDArgument : "var" "phy_speed_x"
	phy_speed_x = currentSpeed;}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 16342EFE
else{	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 1A98CCB1
	/// @DnDParent : 16342EFE
	/// @DnDArgument : "function" "dropClaw"
	dropClaw();}