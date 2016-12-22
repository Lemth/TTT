/// @description Insert description here
// You can write your code in this editor

if(!instance_exists(m1)&&!instance_exists(m2)&&!instance_exists(m3)) {

m1=instance_create_layer(x,y+10,"Objects",obj_enemy_slime);
m2=instance_create_layer(x,y+10,"Objects",obj_enemy_slime);
m3=instance_create_layer(x,y+10,"Objects",obj_enemy_slime);

m1.x=x+random(spwide);
m2.x=x+random(spwide);
m3.x=x+random(spwide);

m1.parnt=self;
m2.parnt=self;
m3.parnt=self;

}

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

