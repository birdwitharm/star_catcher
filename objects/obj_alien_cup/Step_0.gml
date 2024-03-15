if point_distance(x, y, obj_player.x, obj_player.y) < 100
{
	canGrab = true;
}

//if (canGrab && (mouse_x > x && mouse_x < x + sprite_width && 
//	mouse_y > y && mouse_y < y + sprite_height &&
//	mouse_check_button_pressed(mb_left))) 
//{
//	visible = false;
//	ds_list_add(global.inventory, id)
//}

show_debug_message(global.inventory)