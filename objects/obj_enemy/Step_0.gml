event_user(state);

if instance_exists(obj_player) 
{
	var dir = point_direction(x, y, obj_player.x, obj_player.y);
	spd[h] += lengthdir_x(acceleration, dir);
	spd[v] += lengthdir_y(acceleration, dir);
	if point_distance(0, 0, spd[h], spd[v]) > max_spd {
		var move_dir = point_direction(0, 0, spd[h], spd[v]);
		spd[h] = lengthdir_x(max_spd, move_dir);
		spd[v] = lengthdir_y(max_spd, move_dir);
	}

}
move(spd, 1);
