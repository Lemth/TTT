/// @desc Possible player spawns

draw_set_halign(fa_center);

// PLAYER 1
if(p1==noone) {
    draw_text(room_width/5,100,"Press \"Q\" to activate player WASD-Q");
    if(keyboard_check_pressed(ord("Q"))) {
        p1=instance_create_layer(x,y,"Objects",o_player);
        p1.color=c_red;
        p1.control="Q";
        p1choosing=true;
    }
} else {
    if(p1choosing==true) {
        draw_text(room_width/5,100,"Press \"Q\" to READY player WASD-Q");
        if(keyboard_check_pressed(ord("Q"))) {
            p1choosing=false;
        }
    }
}
// PLAYER 2
if(p2==noone) {
    draw_text(room_width/5,100+room_height/3,"Press \"RIGHT-CTRL\" to activate player ARROWKEYS-CTRL");
    if(keyboard_check_pressed(vk_rcontrol)) {
        p2=instance_create_layer(x,y,"Objects",o_player);
        p2.color=c_blue;
        p2.control="CTRL";
        p2choosing=true;
    }
} else {
    if(p2choosing==true) {
        draw_text(room_width/5,100+room_height/3,"Press \"RIGHT-CTRL\" to READY player ARROWKEYS-CTRL");
        if(keyboard_check_pressed(vk_rcontrol)) {
            p2choosing=false;
        }
    }    
}
// PLAYER 3
if(p3==noone) {
    draw_text(room_width*4/5,100+room_height/3,"Press \"Numpad 7\" to activate player Numpad8456-7");
    if(keyboard_check_pressed(vk_numpad7)) {
        p3=instance_create_layer(x,y,"Objects",o_player);
        p3.color=c_yellow;
        p3.control="7";
        p3choosing=true;
    }
} else {
    if(p3choosing==true) {
        draw_text(room_width*4/5,100+room_height/3,"Press \"Numpad 7\" to READY player Numpad8456-7");
        if(keyboard_check_pressed(vk_numpad7)) {
            p3choosing=false;
        }
    }    
}
// PLAYER 4
if(p4==noone) {
    draw_text(room_width*4/5,100,"Press \"Gamepad A\" to activate player DPAD-A");
    if(gamepad_button_check_pressed(0,gp_face1)) {
        p4=instance_create_layer(x,y,"Objects",o_player);
        p4.color=c_green;
        p4.control="DPAD";
        p4choosing=true;
    }
} else {
    if(p4choosing==true) {
        draw_text(room_width*4/5,100,"Press \"Gamepad A\" to READY player DPAD-A");
        if(gamepad_button_check_pressed(0,gp_face1)) {
            p4choosing=false;
        }
    }    
}

// GAME START IF ALL READY AND AT LEAST ONE PICKED
if(p1!=noone || p2!=noone || p3!=noone || p4!=noone) {
   if(p1choosing==false && p2choosing==false && p3choosing==false && p4choosing==false && countdown==false) {
       
		alarm[0]=room_speed*3; // 3 seconds countdown
		countdown=true;
		
   }
}

if(alarm[0]>0) {
    draw_text(room_width/2,room_height/2,string(round(alarm[0]/room_speed)));
}



