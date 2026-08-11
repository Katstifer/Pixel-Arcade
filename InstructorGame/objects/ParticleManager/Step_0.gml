/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 647522A8
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)for (var i = 0; i < array_length(activeParticles); i++){$(13_10)	$(13_10)	var currentSystem = activeParticles[i];$(13_10)	var partCount = part_particles_count(currentSystem); $(13_10)	$(13_10)	if (partCount == 0){$(13_10)		$(13_10)		part_system_destroy(activeParticles[i]);$(13_10)		array_delete(activeParticles, i, 1); $(13_10)		break;$(13_10)	}$(13_10)}"
/// @description Execute Code
for (var i = 0; i < array_length(activeParticles); i++){
	
	var currentSystem = activeParticles[i];
	var partCount = part_particles_count(currentSystem); 
	
	if (partCount == 0){
		
		part_system_destroy(activeParticles[i]);
		array_delete(activeParticles, i, 1); 
		break;
	}
}