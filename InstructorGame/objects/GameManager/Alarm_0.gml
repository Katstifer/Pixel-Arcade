/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4A8827F1
/// @DnDArgument : "code" "physics_world_update_speed(120);$(13_10)$(13_10)var fixture = physics_fixture_create();$(13_10)$(13_10)physics_fixture_set_box_shape(fixture, (room_width / 2), 48);$(13_10)physics_fixture_set_density(fixture, 0);$(13_10)physics_fixture_set_friction(fixture, 0.8); $(13_10)$(13_10)var border = instance_create_layer($(13_10)    room_width / 2,$(13_10)    room_height - 16,$(13_10)    "Instances",$(13_10)    obj_phys_wall$(13_10));$(13_10)$(13_10)physics_fixture_bind(fixture, border);$(13_10)physics_fixture_delete(fixture);$(13_10)$(13_10)var wallFixture = physics_fixture_create(); $(13_10)$(13_10)physics_fixture_set_box_shape(wallFixture, (48), (room_height / 3)); $(13_10)physics_fixture_set_density(wallFixture, 0);$(13_10)physics_fixture_set_friction(wallFixture, 0.8); $(13_10)$(13_10)var leftWall = instance_create_layer($(13_10)	- 48, $(13_10)	room_height - (room_height/5),$(13_10)	"Instances",$(13_10)	obj_phys_wall$(13_10));$(13_10)$(13_10)var rightWall = instance_create_layer($(13_10)	room_width + 48, $(13_10)	room_height - (room_height/6),$(13_10)	"Instances",$(13_10)	obj_phys_wall$(13_10));$(13_10)$(13_10)physics_fixture_bind(wallFixture, leftWall);$(13_10)physics_fixture_bind(wallFixture, rightWall);$(13_10)$(13_10)physics_fixture_delete(wallFixture);$(13_10)$(13_10)show_debug_message("Wall created: " + string(border));$(13_10)$(13_10)var claw = instance_create_layer($(13_10)	room_width/2,$(13_10)	128, $(13_10)	"Instances",$(13_10)	Player$(13_10));$(13_10)$(13_10)UIManager.createPlayTimer(currentRoomName); $(13_10)UIManager.createPlayCounter(); $(13_10)UIManager.createGameControls(); $(13_10)$(13_10)alarm[1] = 1; "
physics_world_update_speed(120);

var fixture = physics_fixture_create();

physics_fixture_set_box_shape(fixture, (room_width / 2), 48);
physics_fixture_set_density(fixture, 0);
physics_fixture_set_friction(fixture, 0.8); 

var border = instance_create_layer(
    room_width / 2,
    room_height - 16,
    "Instances",
    obj_phys_wall
);

physics_fixture_bind(fixture, border);
physics_fixture_delete(fixture);

var wallFixture = physics_fixture_create(); 

physics_fixture_set_box_shape(wallFixture, (48), (room_height / 3)); 
physics_fixture_set_density(wallFixture, 0);
physics_fixture_set_friction(wallFixture, 0.8); 

var leftWall = instance_create_layer(
	- 48, 
	room_height - (room_height/5),
	"Instances",
	obj_phys_wall
);

var rightWall = instance_create_layer(
	room_width + 48, 
	room_height - (room_height/6),
	"Instances",
	obj_phys_wall
);

physics_fixture_bind(wallFixture, leftWall);
physics_fixture_bind(wallFixture, rightWall);

physics_fixture_delete(wallFixture);

show_debug_message("Wall created: " + string(border));

var claw = instance_create_layer(
	room_width/2,
	128, 
	"Instances",
	Player
);

UIManager.createPlayTimer(currentRoomName); 
UIManager.createPlayCounter(); 
UIManager.createGameControls(); 

alarm[1] = 1;