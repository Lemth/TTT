/// @desc Move the Player

// Enable platform movement actions
enable_movement_platform_actions(.5, 4, 12, keyboard_check(vk_right), keyboard_check(vk_left), keyboard_check_pressed(vk_up), keyboard_check_released(vk_up));

// This script might not work for every kind of sprite set but it will work for a basic
// set and will show how you could get started if you want to add more
enable_movement_platform_sprites(s_player_idle, s_player_walk, s_player_jump, .25);

// Move the entity
move_movement_entity();

