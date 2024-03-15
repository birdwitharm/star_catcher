global.getInventory = function()
{
	instance_destroy(obj_yellow_star_lamp);
	
	mx = random(room_width);
	my = random(room_height);
	
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
            inInventory = global.inventory[? "YellowStarLamp"][? "inInventory"];
            held = global.inventory[? "YellowStarLamp"][? "held"];
            canGrab = global.inventory[? "YellowStarLamp"][? "canGrab"];
            grabDistance = global.inventory[? "YellowStarLamp"][? "grabDistance"];
        }
	}
	
	if randomizer = 2
	{
		with (instance_create_layer (mx, my, "Instances", obj_alien_cup)) 
        {
            inInventory = global.inventory[? "YellowStarLamp"][? "inInventory"];
            held = global.inventory[? "YellowStarLamp"][? "held"];
            canGrab = global.inventory[? "YellowStarLamp"][? "canGrab"];
            grabDistance = global.inventory[? "YellowStarLamp"][? "grabDistance"];
        }
	}
	
	//for (var i = 0; i < ds_list_size(global.inventory[? _page_name][? "page options"]); i += 1) 
	//{
	//	with (instance_create_layer(mx,my,"Instances", obj_galaxy_painting)) 
	//	{
	//		my_text = global.inventory[? _page_name][? "page options"][| i][? "option text"];
	//		my_page = global.inventory[? _page_name][? "page options"][| i][? "option page"];
	//		my_room = global.inventory[? _page_name][? "page options"][| i][? "option room"];
	//	}
    //}
}
show_debug_message(game_save_id);
global.inventory = json_import("star.json");
//global.held = "inInventory";
//global.the_page = "Basic"
show_debug_message(global.inventory);



