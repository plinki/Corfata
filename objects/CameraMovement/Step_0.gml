
/// @description Insert description here
// You can write your code in this editor
//camera_set_view_pos(camera,camera_get_view_x(camera) + ((camera_get_view_x(camera) + (camera_get_view_width(camera) / 2)) - zoom_x )*-1 , camera_get_view_y(camera) + ((camera_get_view_y(camera) + (camera_get_view_height(camera) / 2)) - zoom_y )*-1)	




if mouse_check_button_pressed(mb_left) {
	mousepos_x = mouse_x;
	mousepos_y = mouse_y;
}
	
if mouse_check_button(mb_left) {
		xdist = mousepos_x - mouse_x
		ydist = mousepos_y - mouse_y 
	
		camera_set_view_pos(camera, camera_get_view_x(camera) + (xdist/10), camera_get_view_y(camera) + (ydist/10))
}

	
if mouse_wheel_down() {
	zoom_x = mouse_x;
	zoom_y = mouse_y;
	zoom_out = true;
		//camera_set_view_size(camera, camera_get_view_width(camera)+250, camera_get_view_height(camera)+250)
}
	

if mouse_wheel_up() {
	zoom_x = mouse_x;
	zoom_y = mouse_y;
	camera_movement = 0;
	zoom_in = true;

}

if zoom_in == true {
	zoom_out = false;

	if camera_get_view_height(camera) - current_zoom > 200{
		camera_set_view_size(camera, camera_get_view_width(camera)-current_zoom, camera_get_view_height(camera)-current_zoom)
		camera_set_view_pos(camera,camera_get_view_x(camera) + current_zoom/2 + (((camera_get_view_x(camera) + (camera_get_view_width(camera) / 2)) - zoom_x )*-1 )*0.1 , 
		camera_get_view_y(camera) + current_zoom/2 + (((camera_get_view_y(camera) + (camera_get_view_height(camera) / 2)) - zoom_y )*-1  )*0.1)
		current_zoom = current_zoom - 5;
		if current_zoom <= 0 {
			zoom_in = false;
			current_zoom = 30;
			camera_movement = 0;
		}
	}
	else {
		current_zoom = 30;
		zoom_in = false;
	}
}


if zoom_out == true {
	camera_set_view_size(camera, camera_get_view_width(camera)+current_zoom, camera_get_view_height(camera)+current_zoom)
	current_zoom = current_zoom - 5;
	if current_zoom <= 0 {
		zoom_out = false;
		current_zoom = 30;
	}
}


