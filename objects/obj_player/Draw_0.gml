/// @description Draw the player and gun
var dir = point_direction(x, y-sprite_height/2, mouse_x, mouse_y);
var flipped = (mouse_x > x)*2-1;





// Draw the player
draw_sprite_ext(s_player_run, image_index, x, ceil(y), x_scale*flipped, y_scale, 0, image_blend, image_alpha);
// Draw the gun
draw_sprite_ext(s_Gun, 0, x-4*flipped, y-sprite_height/2+32, 1, flipped, dir, image_blend, image_alpha);

gpu_set_fog(false, c_white, 0, 1);
