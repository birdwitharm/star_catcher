// wasd movement
if (keyboard_check(ord("D")) && x + sprite_width < room_width)
{
	x += player_speed;
	if (x > (obj_cameraManager.x + 700)) obj_cameraManager.x += player_speed;
}

if (keyboard_check(ord("A")) && x > 0)
{
	x -= player_speed;
	if (x < (obj_cameraManager.x + obj_cameraManager.view_width) - (700 + sprite_width)) obj_cameraManager.x -= player_speed;
}

if (keyboard_check(ord("S")) && y + sprite_height < room_height)
{
	y += player_speed;
}

if (keyboard_check(ord("W")) && y > 0)
{
	y -= player_speed;
}

if (distance_to_object(obj_planet) < gravity_distance)
{
	gravity_affected = true;
	
}
