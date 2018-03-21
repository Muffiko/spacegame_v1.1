if alarm[0] <= 0 {
	var dir = point_direction(x, y-sprite_height/2, mouse_x, mouse_y);
	var flipped = (mouse_x > x)*2-1;
	var gun_x = x-4*flipped;
	var x_offset = lengthdir_x(16, dir);
	var y_offset = lengthdir_y(16, dir);

	var bullet = instance_create_layer(gun_x+x_offset, y-sprite_height/2+y_offset+40, "Instances", obj_boolet);
	bullet.direction = dir;
	bullet.image_angle = dir;
	alarm[0] = bullet_cooldown;
}
