/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 62BF571C
/// @DnDArgument : "funcName" "createPrizeParticle"
/// @DnDArgument : "arg" "xPos, yPos"
function createPrizeParticle(xPos, yPos) {	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 0A1CA1E9
	/// @DnDParent : 62BF571C
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10)show_debug_message("Create particle"); $(13_10)$(13_10)var partSystem = part_system_create(particle_prizeWin); $(13_10)part_system_position(partSystem, xPos, yPos); $(13_10)part_system_depth(partSystem, -99); $(13_10)$(13_10)array_push(activeParticles, partSystem); "
	/// @description Execute Code
	show_debug_message("Create particle"); 
	
	var partSystem = part_system_create(particle_prizeWin); 
	part_system_position(partSystem, xPos, yPos); 
	part_system_depth(partSystem, -99); 
	
	array_push(activeParticles, partSystem);}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1001CEC6
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)persistent = true; $(13_10)depth = -80; $(13_10)activeParticles = []; $(13_10)$(13_10)"
/// @description Execute Code
persistent = true; 
depth = -80; 
activeParticles = [];