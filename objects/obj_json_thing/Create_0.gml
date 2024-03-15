global.inventory = function(_item_name)
{
	instance_destroy(obj_yellow_star_lamp);
	
	mx = random(room_width);
	my = random(room_height);
	
	randomizer = random(2)
	
	if randomizer = 0
	{
		with (instance_create_layer (mx, my, "Instances", obj_yellow_star_lamp)) 
		{
			furniture = global.inventory[? _page_name][? "YellowStarLamp"];
		}
	}
	
	if randomizer = 1
	{
		with (instance_create_layer (mx, my, "Instances", obj_galaxy_painting)) 
		{
			furniture = global.inventory[? _page_name][? "GalaxyPainting"];
		}
	}
	
	if randomizer = 2
	{
		with (instance_create_layer (mx, my, "Instances", obj_alien_cup)) 
		{
			furniture = global.inventory[? _page_name][? "AlienCup"];
		}
	}
	
	for (var i = 0; i < ds_list_size(global.inventory[? _page_name][? "page options"]); i += 1) 
	{
		with (instance_create_layer(mx,my,"Instances", obj_galaxy_painting)) 
		{
			my_text = global.inventory[? _page_name][? "page options"][| i][? "option text"];
			my_page = global.inventory[? _page_name][? "page options"][| i][? "option page"];
			my_room = global.inventory[? _page_name][? "page options"][| i][? "option room"];
		}
    }

global.inventory = json_import("star json.json"); 
//global.held = "inInventory";
//global.the_page = "Basic"

}

