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
