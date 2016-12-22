/// @description Insert description here
// You can write your code in this editor

// COLOR CHANGE ON DEATH LAST instance
/*
if (image_index==0) {
	if(!instance_exists(m1)) {
		if(!instance_exists(m2)) {
			if(!instance_exists(m3)) {
				if(place_meeting(x,y,o_player)) {
					image_index=1;
				} else {
					image_index=2;
				}
			}
		}
	}
}
*/

// DRAW EVENT
draw_set_color(color);

draw_self();

draw_set_color(c_white);
