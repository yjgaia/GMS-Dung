/// @description  move

if (mouse_x < 180 && sprite_index == sprite_man) {
    
    hspeed = -10;
    
    image_speed = 1;
    image_xscale = -1;
}

if (mouse_x > 180 && sprite_index == sprite_man) {
    
    hspeed = 10;
    
    image_speed = 1;
    image_xscale = 1;
}

