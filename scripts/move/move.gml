
var spd = argument0;
var bounce_ = argument1;

if place_meeting(x+spd[h], y, obj_ground) {
	while !place_meeting(x+sign(spd[h]), y, obj_ground) {
		x += sign(spd[h]);
	}
	if bounce_ > 0 {
		spd[@ h] = -spd[@ h]*bounce_;
	} else {
		spd[@ h] = 0;
	}
}
x += spd[h];

if place_meeting(x, y+spd[v], obj_ground) {
	while !place_meeting(x, y+sign(spd[v]), obj_ground) {
		y += sign(spd[v]);
	}
	if bounce_ > 0 {
		spd[@ v] = -spd[@ v]*bounce_;
	} else {
		spd[@ v] = 0;
	}
}
y += spd[v];
