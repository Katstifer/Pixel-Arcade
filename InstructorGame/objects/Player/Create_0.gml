/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 0EF7E4D2
/// @DnDArgument : "funcName" "startClawGrab"
function startClawGrab() {	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 0418FD8E
	/// @DnDParent : 0EF7E4D2
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10)hasGrabbed = true; $(13_10)grabTimer = 2.0; "
	/// @description Execute Code
	hasGrabbed = true; 
	grabTimer = 2.0;}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 79B100BC
/// @DnDArgument : "funcName" "playerMoveRight"
function playerMoveRight() {	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 72BDD45F
	/// @DnDParent : 79B100BC
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10)movementDirection = 1; $(13_10)currentSpeed = movementDirection * maxSpeed; $(13_10)phy_speed_x = currentSpeed;"
	/// @description Execute Code
	movementDirection = 1; 
	currentSpeed = movementDirection * maxSpeed; 
	phy_speed_x = currentSpeed;}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 7E3DFC0A
/// @DnDArgument : "funcName" "playerMoveLeft"
function playerMoveLeft() {	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 05335C5B
	/// @DnDParent : 7E3DFC0A
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10)movementDirection = -1; $(13_10)currentSpeed = movementDirection * maxSpeed; $(13_10)phy_speed_x = currentSpeed;"
	/// @description Execute Code
	movementDirection = -1; 
	currentSpeed = movementDirection * maxSpeed; 
	phy_speed_x = currentSpeed;}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 79B64A80
/// @DnDArgument : "funcName" "startClawDrop"
function startClawDrop() {	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 225D2676
	/// @DnDParent : 79B64A80
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10)if (isDropping == false){$(13_10)	isDropping = true; $(13_10)	phy_speed_x = 0; $(13_10)}$(13_10)else{$(13_10)	if (hasGrabbed == false){$(13_10)		startClawGrab(); $(13_10)	}$(13_10)}"
	/// @description Execute Code
	if (isDropping == false){
		isDropping = true; 
		phy_speed_x = 0; 
	}
	else{
		if (hasGrabbed == false){
			startClawGrab(); 
		}
	}}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 1A58344E
/// @DnDArgument : "funcName" "reduceGrabs"
function reduceGrabs() {	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 0BD02920
	/// @DnDParent : 1A58344E
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10)GameManager.grabsLeft -= 1; "
	/// @description Execute Code
	GameManager.grabsLeft -= 1;}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5371A310
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)image_speed = 0; $(13_10)image_index = 0; $(13_10)$(13_10)$(13_10)var linear_damping = 0.1;$(13_10)var angular_damping = 0.1;$(13_10)$(13_10)var collider_shape = "box";$(13_10)collider_width = sprite_width * 0.3;$(13_10)collider_height = sprite_height * 0.2;$(13_10)$(13_10)var density = 0;$(13_10)var objFriction = 0.2;$(13_10)var restitution = 0.1;$(13_10)$(13_10)var fixture = physics_fixture_create();$(13_10)$(13_10)physics_fixture_set_box_shape($(13_10)    fixture,$(13_10)    collider_width,$(13_10)    collider_height$(13_10));$(13_10)$(13_10)physics_fixture_set_density($(13_10)    fixture,$(13_10)    density$(13_10));$(13_10)$(13_10)physics_fixture_set_friction($(13_10)    fixture,$(13_10)    objFriction$(13_10));$(13_10)$(13_10)physics_fixture_set_restitution($(13_10)    fixture,$(13_10)    restitution$(13_10));$(13_10)$(13_10)physics_fixture_set_linear_damping($(13_10)    fixture,$(13_10)    linear_damping$(13_10));$(13_10)$(13_10)physics_fixture_set_angular_damping($(13_10)    fixture,$(13_10)    angular_damping$(13_10));$(13_10)$(13_10)physics_fixture_set_kinematic($(13_10)fixture); $(13_10)$(13_10)physics_fixture_bind($(13_10)    fixture,$(13_10)    id$(13_10));$(13_10)$(13_10)physics_fixture_delete($(13_10)    fixture$(13_10));$(13_10)$(13_10)currentPlayTime = maxPlayTime; $(13_10)timerHitZero = false;$(13_10)"
/// @description Execute Code
image_speed = 0; 
image_index = 0; 


var linear_damping = 0.1;
var angular_damping = 0.1;

var collider_shape = "box";
collider_width = sprite_width * 0.3;
collider_height = sprite_height * 0.2;

var density = 0;
var objFriction = 0.2;
var restitution = 0.1;

var fixture = physics_fixture_create();

physics_fixture_set_box_shape(
    fixture,
    collider_width,
    collider_height
);

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

physics_fixture_set_kinematic(
fixture); 

physics_fixture_bind(
    fixture,
    id
);

physics_fixture_delete(
    fixture
);

currentPlayTime = maxPlayTime; 
timerHitZero = false;