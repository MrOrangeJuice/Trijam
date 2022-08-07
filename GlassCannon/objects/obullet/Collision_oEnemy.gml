/// @description Collide with enemy

other.flash = 3;
other.hp -= 5 * charge * charge;
audio_play_sound(snd_Hit,5,false);
instance_destroy();
