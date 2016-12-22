/// @description Insert description here
// You can write your code in this editor
var counterd=0;
if(instance_exists(parnt.m1)) { counterd+=1; }
if(instance_exists(parnt.m2)) { counterd+=1; }
if(instance_exists(parnt.m3)) { counterd+=1; }

if(counterd==1) {
   parnt.color=other.color; 
}

instance_destroy();
