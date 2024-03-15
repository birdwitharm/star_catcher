// wasd movement
if (keyboard_check(ord("D")) && x + sprite_width < room_width)
{
	x += player_speed;
	if (x > (obj_cameraManager.x + 700)) obj_cameraManager.x += player_speed;
	
	image_index = 0;
}

if (keyboard_check(ord("A")) && x > 0)
{
	x -= player_speed;
	if (x < (obj_cameraManager.x + obj_cameraManager.view_width) - (700 + sprite_width)) obj_cameraManager.x -= player_speed;
	
	image_index = 1;
}

if (keyboard_check(ord("S")) && y + sprite_height < room_height)
{
	y += player_speed;
}

if (keyboard_check(ord("W")) && y > 0)
{
	y -= player_speed;
}

// shooting bullets
if (mouse_check_button_pressed(mb_left))
{
	instance_create_layer(x, y, "Instances", obj_bullet);
}

// going to your room
if (keyboard_check_pressed(ord("K")))
{
	room_goto(rm_your_room)
}

// gravity
var planet_distance; 
var planet_direction;
var gravity_pull;

var thing = 3000; // thing that makes the gravity stronger or weaker idk

var nearest_planet = instance_nearest(x, y, obj_planet)

if (distance_to_object(obj_planet) < gravity_distance)
{
	gravity_affected = true;
	
	planetDistance = point_distance(x, y, nearest_planet.x, nearest_planet.y)
	if planetDistance < 100
	{
		planetDistance = 100; 
	}
	
	planet_direction = point_direction(x, y, obj_planet.x, obj_planet.y)
	planet_pull = thing * (1 / (planetDistance * planetDistance))

	motion_add(planet_direction, planet_pull)
} else if !instance_exists(obj_planet) {
	gravity_affected = false;
}

