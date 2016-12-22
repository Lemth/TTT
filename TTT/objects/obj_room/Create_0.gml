/// @description Insert description here
// You can write your code in this editor

image_speed=0;

spwide=sprite_width-24;

m1=instance_create_layer(x,y+10,"Objects",obj_enemy_slime);
m2=instance_create_layer(x,y+10,"Objects",obj_enemy_slime);
m3=instance_create_layer(x,y+10,"Objects",obj_enemy_slime);

m1.x=x+random(spwide);
m2.x=x+random(spwide);
m3.x=x+random(spwide);

m1.parnt=self;
m2.parnt=self;
m3.parnt=self;
