
key_right = keyboard_check(ord("D"))
key_left = keyboard_check(ord("A"))
key_jump = keyboard_check_pressed(vk_space)

if hp <= 0 {
	instance_destroy();
}

var hspd = key_right - key_left;

if hspd != 0 {
	spd[h] += hspd*acceleration;
	spd[h] = clamp(spd[h], -max_spd, max_spd);
	var flipped = (mouse_x > x)*2-1;
	image_speed = flipped*hspd*.6;
} else {
	spd[h] = lerp(spd[h], 0, friction);
	image_speed = 0;
	image_index = 0;
}

if !place_meeting(x, y+1, obj_ground) {
	spd[v] += grv;
	image_speed = 0;
	image_index = 13;
} 
else 
{
	if (key_jump) 
	{
		spd[v] = jump_height;
		x_scale = image_xscale*.8;
		y_scale = image_yscale*1.4;
	}
}

move(spd, 0);

// Check for landing
if place_meeting(x, y+1, obj_ground) && !place_meeting(x, yprevious+1, obj_ground) {
	x_scale_ = image_xscale*1.4;
	y_scale_ = image_yscale*.8;
}

// Move back to normal scale
x_scale = lerp(x_scale, image_xscale, .2);
y_scale = lerp(y_scale, image_yscale, .2);
//animacje
