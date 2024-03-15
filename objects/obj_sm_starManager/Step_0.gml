// randomizing
randomize();
var small_star_random = ceil(random(8));

// creating the tiny stars 
if (small_star_random = 1) {
	instance_create_layer(random(room_width), random_range(50, room_height - 50), "Instances", obj_small_star)
}

