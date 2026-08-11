/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4ED4E0B5
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)random_set_seed(current_time); $(13_10)$(13_10)	$(13_10)if (global.gamePaused){$(13_10)	resumeGame(); $(13_10)}$(13_10)$(13_10)for (var i = 0; i <= prizeAmount; i++){$(13_10)	$(13_10)	var prizeNum = floor(random(prizeVariety))$(13_10)	$(13_10)	var spawnX; $(13_10)	var spawnY; $(13_10)	$(13_10)	repeat(30){$(13_10)		$(13_10)		spawnX = random(room_width - 128) + 64;$(13_10)		spawnY = random(room_height - 196) + 128;$(13_10)		$(13_10)		if(!collision_circle($(13_10)		spawnX,$(13_10)		spawnY, $(13_10)		48, $(13_10)		obj_prize_parent, $(13_10)		false, $(13_10)		true))$(13_10)		{$(13_10)			$(13_10)		instance_create_layer($(13_10)			spawnX,$(13_10)			spawnY,$(13_10)			"Instances",$(13_10)			prizeOptions[| prizeNum]$(13_10)		);$(13_10)		$(13_10)		break; $(13_10)		}$(13_10)	}$(13_10)$(13_10)}$(13_10)$(13_10)alarm[1] = -1; "
/// @description Execute Code
random_set_seed(current_time); 

	
if (global.gamePaused){
	resumeGame(); 
}

for (var i = 0; i <= prizeAmount; i++){
	
	var prizeNum = floor(random(prizeVariety))
	
	var spawnX; 
	var spawnY; 
	
	repeat(30){
		
		spawnX = random(room_width - 128) + 64;
		spawnY = random(room_height - 196) + 128;
		
		if(!collision_circle(
		spawnX,
		spawnY, 
		48, 
		obj_prize_parent, 
		false, 
		true))
		{
			
		instance_create_layer(
			spawnX,
			spawnY,
			"Instances",
			prizeOptions[| prizeNum]
		);
		
		break; 
		}
	}

}

alarm[1] = -1;