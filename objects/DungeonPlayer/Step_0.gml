if (keyboard_check(ord("D")) or keyboard_check(ord("A")) or keyboard_check(ord("S"))) or keyboard_check(ord("W"))
	sprite_index = sprPlayerDungeonRun;
else
	sprite_index = sprPlayerDungeonIdle;
	
	
direction_horizontal = keyboard_check(ord("D")) - keyboard_check(ord("A"));
direction_vertical = keyboard_check(ord("S")) - keyboard_check(ord("W"));


if !place_meeting(x + direction_horizontal, y, objWall) 
	x += direction_horizontal

if !place_meeting(x, y + direction_vertical, objWall)
	y += direction_vertical




	
camera_set_view_pos(view_camera[0], x - camera_get_view_width(view_camera[0])/2 , y - camera_get_view_height(view_camera[0])/2)