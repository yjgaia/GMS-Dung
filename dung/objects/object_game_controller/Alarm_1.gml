/// @description  decrease interval

if (interval > 1) {
    interval -= 1;
}

alarm[1] = room_speed * (20 - interval);

