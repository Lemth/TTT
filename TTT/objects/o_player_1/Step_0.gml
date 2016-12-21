/// @desc Possible player spawns

draw_set_halign(fa_center);

// PLAYER 1
if(p1==noone) {
    draw_text(room_widht/5,100,"Press \"Q\" to activate player WASD-Q");
    if(keyboard_check_pressed(ord("Q"))) {
        p1=instance_create_layer(x,y,"Objects",obj_player);
        p1.color=c_red;
    }
} else {
    if(p1.ready==false) {
        draw_text(room_widht/5,100,"Press \"Q\" to READY player WASD-Q");
        if(keyboard_check_pressed(ord("Q"))) {
            p1.ready=true;
        }
    }
}
// PLAYER 2
if(p2==noone) {
    draw_text(room_widht*2/5,100,"Press \"RIGHT-CTRL\" to activate player ARROWKEYS-CTRL");
    if(keyboard_check_pressed(vk_control)) {
        p1=instance_create_layer(x,y,"Objects",obj_player);
        p1.color=c_red;
    }
} else {
    if(p2.ready==false) {
        draw_text(room_widht*2/5,100,"Press \"RIGHT-CTRL\" to READY player ARROWKEYS-CTRL");
        if(keyboard_check_pressed(vk_control)) {
            p2.ready=true;
        }
    }    
}
// PLAYER 3
if(p3==noone) {
    draw_text(room_widht*3/5,100,"Press \"Numpad 7\" to activate player Numpad8456-7");
    if(keyboard_check_pressed(numpad7)) {
        p1=instance_create_layer(x,y,"Objects",obj_player);
        p1.color=c_red;
    }
} else {
    if(p3.ready==false) {
        draw_text(room_widht*3/5,100,"Press \"Numpad 7\" to READY player Numpad8456-7");
        if(keyboard_check_pressed(numpad7)) {
            p3.ready=true;
        }
    }    
}
// PLAYER 4
if(p4==noone) {
    draw_text(room_widht*4/5,100,"Press \"Gamepad A\" to activate player DPAD-A");
    if(keyboard_check_pressed(gamepad)) {
        p1=instance_create_layer(x,y,"Objects",obj_player);
        p1.color=c_red;
    }
} else {
    if(p4.ready==false) {
        draw_text(room_widht*4/5,100,"Press \"Gamepad A\" to READY player DPAD-A");
        if(keyboard_check_pressed(gamepad)) {
            p4.ready=true;
        }
    }    
}




