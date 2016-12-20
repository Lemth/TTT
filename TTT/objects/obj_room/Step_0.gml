/// @description Insert description here
// You can write your code in this editor

if (image_index==0) {
	if(!instance_exists(m1)) {
		if(!instance_exists(m2)) {
			if(!instance_exists(m3)) {
				if(place_meeting(x,y,o_player_1)) {
					image_index=1;
				} else {
					image_index=2;
				}
			}
		}
	}
}

