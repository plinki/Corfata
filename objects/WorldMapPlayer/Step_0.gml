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



if mouse_check_button(mb_right){
	if place_meeting(mouse_x, mouse_y, objCastle) {
		castle_id = instance_position(mouse_x, mouse_y, objCastle)
		path_to_castle = true;		
	}
else path_to_castle = false;
}
	
	
if path_to_castle && distance_to_object(castle_id) < 5 {
		in_castle = true;
		image_alpha = 0;
}


if in_castle == true {
	if mouse_check_button(mb_right) {
		if !place_meeting(mouse_x, mouse_y, castle_id) {
			image_alpha = 1;
			in_castle = false;
		}
	}
}

		
	
