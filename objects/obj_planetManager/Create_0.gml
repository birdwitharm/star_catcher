for (var i = 0; i < 8; ++i) 
{
	randomize();
	instance_create_layer(random_range(1000, 4500), random(room_height), "Instances", obj_planet)
}