/// @description  hspeed = 0;

if (mouse_x < 180 && hspeed < 0) {
    hspeed = 0;
    image_speed = 0;
}

if (mouse_x > 180 && hspeed > 0) {
    hspeed = 0;
    image_speed = 0;
}

