
//Get the position of the mouse when player starts to hold LMB
if mouse_check_button_pressed(mb_left) {
	mousepos_x = mouse_x;
	mousepos_y = mouse_y;
}
	
//When player holds LMB, every calculate the distance between initial mouse click and drag
if mouse_check_button(mb_left) {
		xdist = mousepos_x - mouse_x
		ydist = mousepos_y - mouse_y 

//Change position of the camera. Current camera position + distance between initial click and current mouse pos
//There are limits where camera can move, as dictated by clamps below. 
	camera_set_view_pos(camera,
	clamp(camera_get_view_x(camera) + (xdist/10),0  - room_width/4 , room_width*1.25 - camera_get_view_width(camera)),
	clamp(camera_get_view_y(camera) + (ydist/10),0 - room_height/4 , room_height*1.25 - camera_get_view_height(camera))	)

}


//If player scrolls down, set zoom_out boolean to true, this triggers condition and changes camera size
if mouse_wheel_down() && !zoom_in {
	zoom_x = mouse_x;
	zoom_y = mouse_y;
	zoom_out = true;


}
	
//If player scrolls up, set zoom_in boolean to true, this triggers condition and changes camera size
//It also takes note of the mouse position when zooming, so it can move camera to this pos
if mouse_wheel_up() && !zoom_out {
	zoom_x = mouse_x;
	zoom_y = mouse_y;
	zoom_in = true;

}

//When the camera is zooming in, keep setting zoom_out to false so both conditions can't be true at the same time.
if zoom_in == true {


//This works only with square (1:1) camera - if the size of it is lower than 200, make zooming in impossible
//Please note I really don't remember how i made the code below, but it works and makes zooming in smooth, aswell as
//takes note of the change in camera size, so the window doesnt fly around.
	if camera_get_view_height(camera) - current_zoom >= 450 {
		camera_set_view_pos(camera, 
		camera_get_view_x(camera) + (((camera_get_view_x(camera) + (camera_get_view_width(camera) / 2)) - zoom_x )*-1 )*0.1 , 
		camera_get_view_y(camera)  + (((camera_get_view_y(camera) + (camera_get_view_height(camera) / 2)) - zoom_y )*-1  )*0.1)
		
		
		camera_set_view_size(camera, camera_get_view_width(camera) - current_zoom, camera_get_view_height(camera) - current_zoom)
		
		camera_set_view_pos(camera, camera_get_view_x(camera) + current_zoom/2, camera_get_view_y(camera) + current_zoom/2)
		
		current_zoom = current_zoom - 10;
		if current_zoom <= 0 {
			zoom_in = false;
			current_zoom = 100;
		}
	}
	else {
		current_zoom = 100;
		zoom_in = false;
	}
}

if zoom_out == true {


	if camera_get_view_height(camera) + current_zoom <= 3300 {
		camera_set_view_pos(camera, 
		camera_get_view_x(camera) + (((camera_get_view_x(camera) + (camera_get_view_width(camera) / 2)) - zoom_x )*-1 )*0.1 , 
		camera_get_view_y(camera)  + (((camera_get_view_y(camera) + (camera_get_view_height(camera) / 2)) - zoom_y )*-1  )*0.1)
		
		
		camera_set_view_size(camera, camera_get_view_width(camera)+current_zoom, camera_get_view_height(camera)+current_zoom)
		
		camera_set_view_pos(camera, camera_get_view_x(camera) - current_zoom/2, camera_get_view_y(camera) - current_zoom/2)
		
		current_zoom = current_zoom - 10;
		if current_zoom <= 0 {
			zoom_out = false;
			current_zoom = 100;
		}
	}
	else {
		current_zoom = 100;
		zoom_out = false;
	}
}



