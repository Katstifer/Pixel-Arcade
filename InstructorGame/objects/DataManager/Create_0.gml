/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 708A5E87
/// @DnDArgument : "funcName" "reduceAmount"
/// @DnDArgument : "arg" "prizeName, variant, amount"
function reduceAmount(prizeName, variant, amount) {	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 60C75C91
	/// @DnDParent : 708A5E87
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10)global.playerInventory[$prizeName][variant] -= amount;$(13_10)if (global.playerInventory[$prizeName][variant] < 0){$(13_10)global.playerInventory[$prizeName][variant] = 0; $(13_10)}"
	/// @description Execute Code
	global.playerInventory[$prizeName][variant] -= amount;
	if (global.playerInventory[$prizeName][variant] < 0){
	global.playerInventory[$prizeName][variant] = 0; 
	}}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 693C9E96
/// @DnDArgument : "funcName" "addToInventory"
/// @DnDArgument : "arg" "prizeName, variant"
function addToInventory(prizeName, variant) {	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 57B9F3BE
	/// @DnDParent : 693C9E96
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10)global.playerInventory[$prizeName][variant] += 1; $(13_10)show_debug_message("Prize now has " + global.playerInventory[$prizeName][variant]);"
	/// @description Execute Code
	global.playerInventory[$prizeName][variant] += 1; 
	show_debug_message("Prize now has " + global.playerInventory[$prizeName][variant]);}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 50B99EF5
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)persistent = true;$(13_10)$(13_10)global.itemDatabase = {$(13_10)	axolotl : {$(13_10)	object : AxolotlPrizeObj, $(13_10)	gameSource : "crane_pond", $(13_10)	value : 20,$(13_10)	displayName : "Plush Axolotl",$(13_10)	sprite: sprite_cranePrizeAxolotl,$(13_10)	variants: 3,$(13_10)	},$(13_10)		fish : {$(13_10)	object : FishPrizeObj, $(13_10)	gameSource : "crane_pond", $(13_10)	value : 10,$(13_10)	displayName : "Plush Fish",$(13_10)	sprite: sprite_cranePrizeFish,$(13_10)	variants: 3,$(13_10)	},$(13_10)		frog : {$(13_10)	object : FrogPrizeObj, $(13_10)	gameSource : "crane_pond", $(13_10)	value : 15,$(13_10)	displayName : "Plush Frog",$(13_10)	sprite: sprite_cranePrizeFrog,$(13_10)	variants: 3,$(13_10)	},$(13_10)		alien : {$(13_10)	object : AlienPrizeObj,$(13_10)	gameSource : "crane_space",$(13_10)	value: 30, $(13_10)	displayName : "Familiar Alien",$(13_10)	sprite : sprite_cranePrizeAlien,$(13_10)	variants: 3,$(13_10)	},$(13_10)	ufo : {$(13_10)		object : UFOPrizeObj,$(13_10)		gameSource : "crane_space",$(13_10)		value : 25,$(13_10)		displayName : "Model UFO",$(13_10)		sprite : sprite_cranePrizeUFO, $(13_10)		variants : 3$(13_10)	},$(13_10)	planet : {$(13_10)		object : PlanetPrizeObj,$(13_10)		gameSource : "crane_space",$(13_10)		value : 20,$(13_10)		displayName : "Planet Ball",$(13_10)		sprite : sprite_cranePrizePlanet, $(13_10)		variants : 3$(13_10)	}$(13_10)	$(13_10)};$(13_10)$(13_10)$(13_10)global.roomDatabase = {$(13_10)	main_menu : {$(13_10)		roomObject : room_mainMenu,$(13_10)		displayName : "Main Menu",$(13_10)		usesPhysics : false,$(13_10)		type : "menu"$(13_10)	},$(13_10)	play_menu : {$(13_10)		roomObject : room_playMenu,$(13_10)		displayName : "Game Select",$(13_10)		usesPhysics : false,$(13_10)		type : "menu"$(13_10)	},$(13_10)	prize_menu : {$(13_10)		roomObject : room_prizeMenu,$(13_10)		displayName : "Prize Compendium",$(13_10)		usesPhysics : false,$(13_10)		type : "menu"$(13_10)	},$(13_10)	crane_pond : {$(13_10)		roomObject : room_craneGamePond,$(13_10)		displayName : "Frog Pond Crane Game",$(13_10)		usesPhysics : true,$(13_10)		type : "game",$(13_10)		cost : 0,$(13_10)	},$(13_10)	crane_space : {$(13_10)		roomObject : room_craneGameSpace, $(13_10)		displayName : "UFO Catcher", $(13_10)		usesPhysics : true, $(13_10)		type : "game",$(13_10)		cost : 15$(13_10)	},$(13_10)	$(13_10)};$(13_10)$(13_10)global.playerInventory = {	$(13_10)	axolotl : {$(13_10)	0: 1,$(13_10)	1: 2,$(13_10)	2: 0$(13_10)	},$(13_10)	fish : {$(13_10)	0: 0,$(13_10)	1: 1,$(13_10)	2: 0$(13_10)	},$(13_10)	frog : {$(13_10)	0: 2,$(13_10)	1: 0,$(13_10)	2: 0$(13_10)	},$(13_10)	alien : {$(13_10)	0: 1,$(13_10)	1: 0,$(13_10)	2: 3$(13_10)	},$(13_10)	ufo : {$(13_10)	0: 0,$(13_10)	1: 0,$(13_10)	2: 0	$(13_10)	},$(13_10)	planet : {$(13_10)	0: 1,$(13_10)	1: 0,$(13_10)	2: 0$(13_10)	}$(13_10)}$(13_10)$(13_10)$(13_10)/*$(13_10)PRIZE LSIT: $(13_10)$(13_10)Code name = $(13_10)$(13_10)Object name$(13_10)Source game$(13_10)Display Name$(13_10)Value$(13_10)sprite$(13_10)variant num$(13_10)*/$(13_10)$(13_10)/*$(13_10)EARNED PRIZES: $(13_10)$(13_10)Code name = $(13_10)variant1 amount: x$(13_10)variant2 amount: x$(13_10)variant3 amount: x$(13_10)$(13_10)*/"
/// @description Execute Code
persistent = true;

global.itemDatabase = {
	axolotl : {
	object : AxolotlPrizeObj, 
	gameSource : "crane_pond", 
	value : 20,
	displayName : "Plush Axolotl",
	sprite: sprite_cranePrizeAxolotl,
	variants: 3,
	},
		fish : {
	object : FishPrizeObj, 
	gameSource : "crane_pond", 
	value : 10,
	displayName : "Plush Fish",
	sprite: sprite_cranePrizeFish,
	variants: 3,
	},
		frog : {
	object : FrogPrizeObj, 
	gameSource : "crane_pond", 
	value : 15,
	displayName : "Plush Frog",
	sprite: sprite_cranePrizeFrog,
	variants: 3,
	},
		alien : {
	object : AlienPrizeObj,
	gameSource : "crane_space",
	value: 30, 
	displayName : "Familiar Alien",
	sprite : sprite_cranePrizeAlien,
	variants: 3,
	},
	ufo : {
		object : UFOPrizeObj,
		gameSource : "crane_space",
		value : 25,
		displayName : "Model UFO",
		sprite : sprite_cranePrizeUFO, 
		variants : 3
	},
	planet : {
		object : PlanetPrizeObj,
		gameSource : "crane_space",
		value : 20,
		displayName : "Planet Ball",
		sprite : sprite_cranePrizePlanet, 
		variants : 3
	}
	
};


global.roomDatabase = {
	main_menu : {
		roomObject : room_mainMenu,
		displayName : "Main Menu",
		usesPhysics : false,
		type : "menu"
	},
	play_menu : {
		roomObject : room_playMenu,
		displayName : "Game Select",
		usesPhysics : false,
		type : "menu"
	},
	prize_menu : {
		roomObject : room_prizeMenu,
		displayName : "Prize Compendium",
		usesPhysics : false,
		type : "menu"
	},
	crane_pond : {
		roomObject : room_craneGamePond,
		displayName : "Frog Pond Crane Game",
		usesPhysics : true,
		type : "game",
		cost : 0,
	},
	crane_space : {
		roomObject : room_craneGameSpace, 
		displayName : "UFO Catcher", 
		usesPhysics : true, 
		type : "game",
		cost : 15
	},
	
};

global.playerInventory = {	
	axolotl : {
	0: 1,
	1: 2,
	2: 0
	},
	fish : {
	0: 0,
	1: 1,
	2: 0
	},
	frog : {
	0: 2,
	1: 0,
	2: 0
	},
	alien : {
	0: 1,
	1: 0,
	2: 3
	},
	ufo : {
	0: 0,
	1: 0,
	2: 0	
	},
	planet : {
	0: 1,
	1: 0,
	2: 0
	}
}


/*
PRIZE LSIT: 

Code name = 

Object name
Source game
Display Name
Value
sprite
variant num
*/

/*
EARNED PRIZES: 

Code name = 
variant1 amount: x
variant2 amount: x
variant3 amount: x

*//**/