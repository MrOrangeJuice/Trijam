/// @description Init

display_set_gui_size(320,180);
draw_set_font(fUI);
draw_set_color(#FAFFFD);
draw_set_halign(fa_center);
global.health = 100;
global.score = 0;
alarm[0] = room_speed * 0.05;