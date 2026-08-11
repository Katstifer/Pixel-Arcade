/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 6FCC82BA
/// @DnDArgument : "funcName" "releaseFromClaw"
function releaseFromClaw() {	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 7B9F87FA
	/// @DnDParent : 6FCC82BA
	/// @DnDArgument : "code" "if (currentJoint != noone){$(13_10)	physics_joint_delete(currentJoint);$(13_10)}"
	if (currentJoint != noone){
		physics_joint_delete(currentJoint);
	}}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 7A36BDCB
/// @DnDArgument : "funcName" "attachToClaw"
/// @DnDArgument : "arg" "claw, xPos, yPos"
function attachToClaw(claw, xPos, yPos) {	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 5B18A8D3
	/// @DnDParent : 7A36BDCB
	/// @DnDArgument : "code" "currentJoint = physics_joint_revolute_create($(13_10)	claw,$(13_10)	self, $(13_10)	xPos,$(13_10)	yPos, $(13_10)	0,$(13_10)	0,$(13_10)	false, $(13_10)	0,$(13_10)	0,$(13_10)	false, $(13_10)	false$(13_10))"
	currentJoint = physics_joint_revolute_create(
		claw,
		self, 
		xPos,
		yPos, 
		0,
		0,
		false, 
		0,
		0,
		false, 
		false
	)}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 37DCAB44
/// @DnDArgument : "code" "/// Prize setup$(13_10)depth = -50; $(13_10)image_speed = 0;$(13_10)$(13_10)var prizeVariations = 3;$(13_10)image_index = irandom(prizeVariations - 1);$(13_10)$(13_10)var fixture = physics_fixture_create();$(13_10)$(13_10)switch (collider_shape)$(13_10){$(13_10)    case "circle":$(13_10)        physics_fixture_set_circle_shape($(13_10)            fixture,$(13_10)            collider_radius$(13_10)        );$(13_10)    break;$(13_10)$(13_10)    default:$(13_10)        physics_fixture_set_box_shape($(13_10)            fixture,$(13_10)            collider_width,$(13_10)            collider_height$(13_10)        );$(13_10)    break;$(13_10)}$(13_10)$(13_10)physics_fixture_set_density($(13_10)    fixture,$(13_10)    density$(13_10));$(13_10)$(13_10)physics_fixture_set_friction($(13_10)    fixture,$(13_10)    objFriction$(13_10));$(13_10)$(13_10)physics_fixture_set_restitution($(13_10)    fixture,$(13_10)    restitution$(13_10));$(13_10)$(13_10)physics_fixture_set_linear_damping($(13_10)    fixture,$(13_10)    linear_damping$(13_10));$(13_10)$(13_10)physics_fixture_set_angular_damping($(13_10)    fixture,$(13_10)    angular_damping$(13_10));$(13_10)$(13_10)currentFixture = fixture; $(13_10)show_debug_message("Fixture: ");$(13_10)show_debug_message(currentFixture); $(13_10)$(13_10)physics_fixture_bind($(13_10)    fixture,$(13_10)    id$(13_10));$(13_10)$(13_10)physics_fixture_delete($(13_10)    fixture$(13_10));$(13_10)$(13_10)$(13_10)phy_bullet = true;$(13_10)$(13_10)"
/// Prize setup
depth = -50; 
image_speed = 0;

var prizeVariations = 3;
image_index = irandom(prizeVariations - 1);

var fixture = physics_fixture_create();

switch (collider_shape)
{
    case "circle":
        physics_fixture_set_circle_shape(
            fixture,
            collider_radius
        );
    break;

    default:
        physics_fixture_set_box_shape(
            fixture,
            collider_width,
            collider_height
        );
    break;
}

physics_fixture_set_density(
    fixture,
    density
);

physics_fixture_set_friction(
    fixture,
    objFriction
);

physics_fixture_set_restitution(
    fixture,
    restitution
);

physics_fixture_set_linear_damping(
    fixture,
    linear_damping
);

physics_fixture_set_angular_damping(
    fixture,
    angular_damping
);

currentFixture = fixture; 
show_debug_message("Fixture: ");
show_debug_message(currentFixture); 

physics_fixture_bind(
    fixture,
    id
);

physics_fixture_delete(
    fixture
);


phy_bullet = true;