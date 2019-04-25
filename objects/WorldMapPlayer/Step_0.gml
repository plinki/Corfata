if mouse_check_button(mb_right) {	
	direction_x = mouse_x;
	direction_y = mouse_y;
	
	is_moving = true;
	
}

if is_moving = true {
	
	if point_distance(x,y, direction_x, direction_y) < 1 {	
		is_moving = false;
		speed = 0;	
	}
	
	else 
		move_towards_point( direction_x, direction_y, current_speed );
	
}



if mouse_check_button(mb_right) && !inside{
	if place_meeting(mouse_x, mouse_y, Location) {
		location_id = instance_position(mouse_x, mouse_y, Location)
		path_to_location = true;		
	}
else path_to_location = false;
}
	
	
if path_to_location && distance_to_object(location_id) < 5 {
		inside = true;
		image_alpha = 0;
		instance_create_depth(location_id.x + sprite_get_width(sprArrow)/2, location_id.y + location_id.sprite_height/-2, 5, objPointer)
		location_id.player_inside = true;
		path_to_location = false;
}


if inside == true {
	if mouse_check_button(mb_right) {
		if !place_meeting(mouse_x, mouse_y, location_id) {
			image_alpha = 1;
			location_id.player_inside = false;
			inside = false;

		}
	}
}

		
	
