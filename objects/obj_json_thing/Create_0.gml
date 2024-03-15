global.getInventory = function()
{
	// instance_destroy(obj_yellow_star_lamp);
	
	mx = random(room_width);
	my = random(room_height);
	
	randomize();
	randomizer = irandom(2)
	
	if randomizer = 0
	{
		with (instance_create_layer (mx, my, "Instances", obj_yellow_star_lamp)) 
		{
            inInventory = global.inventory[? "YellowStarLamp"][? "inInventory"];
            held = global.inventory[? "YellowStarLamp"][? "held"];
            canGrab = global.inventory[? "YellowStarLamp"][? "canGrab"];
            grabDistance = global.inventory[? "YellowStarLamp"][? "grabDistance"];
        }
	}
	
	if randomizer = 1
	{
		with (instance_create_layer (mx, my, "Instances", obj_galaxy_painting)) 
        {
            inInventory = global.inventory[? "GalaxyPainting"][? "inInventory"];
            held = global.inventory[? "GalaxyPainting"][? "held"];
            canGrab = global.inventory[? "GalaxyPainting"][? "canGrab"];
            grabDistance = global.inventory[? "GalaxyPainting"][? "grabDistance"];
        }
	}
	
	if randomizer = 2
	{
		with (instance_create_layer (mx, my, "Instances", obj_alien_cup)) 
        {
            inInventory = global.inventory[? "AlienCup"][? "inInventory"];
            held = global.inventory[? "AlienCup"][? "held"];
            canGrab = global.inventory[? "AlienCup"][? "canGrab"];
            grabDistance = global.inventory[? "AlienCup"][? "grabDistance"];
        }
	}
}

show_debug_message(game_save_id);
global.inventory = json_import("star.json");

show_debug_message(global.inventory);



