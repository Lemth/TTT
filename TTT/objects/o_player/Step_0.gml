/// @desc Move the Player

switch(control) {
    
  case "Q":
    right=keyboard_check(ord("D"));
    left=keyboard_check(ord("A"));
    up=keyboard_check(ord("W"));
    down=keyboard_check(ord("S"));
    jump=keyboard_check_pressed(ord("W"));
    duck=keyboard_check_released(ord("S"));
    shoot=keyboard_check_pressed(ord("Q"))+keyboard_check_pressed(ord("E"));
  break;
  case "CTRL":
    right=keyboard_check(vk_right);
    left=keyboard_check(vk_left);
    up=keyboard_check(vk_up);
    down=keyboard_check(vk_down);
    jump=keyboard_check_pressed(vk_up);
    duck=keyboard_check_released(vk_down);
    shoot=keyboard_check_pressed(vk_control)+keyboard_check_pressed(vk_shift);    
  break;
  case "7":
    right=keyboard_check(numpad6);
    left=keyboard_check(numpad4);
    up=keyboard_check(numpad8);
    down=keyboard_check(numpad5);
    jump=keyboard_check_pressed(numpad8);
    duck=keyboard_check_released(numpad5);
    shoot=keyboard_check_pressed(numpad7)+keyboard_check_pressed(numpad9);    
  break;
  case "DPAD":
    right=keyboard_check(ord("D"));
    left=keyboard_check(ord("A"));
    up=keyboard_check(ord("W"));
    down=keyboard_check(ord("S"));
    jump=keyboard_check_pressed(ord("W"));
    duck=keyboard_check_released(ord("S"));
    shoot=keyboard_check_pressed(ord("Q"))+keyboard_check_pressed(ord("E"));
  break;
  default:
    right=0;
    left=0;
    up=0;
    down=0;
    jump=0;
    duck=0;
    shoot=0;
  break;
}
   


// Enable platform movement actions
enable_movement_platform_actions(.5, 4, 12, right, left, jump, duck);

// This script might not work for every kind of sprite set but it will work for a basic
// set and will show how you could get started if you want to add more
enable_movement_platform_sprites(s_player_idle, s_player_walk, s_player_jump, .25);

// Move the entity
move_movement_entity();

if(shoot) {
    var dir=get_direction(0,0,right-left,down-up);
}

