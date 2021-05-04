//buttonPressed(x1, y1, x2, y2)
//checks to see whether the mouse was clicked within that region
//Returns true if a mouse click was detected within the regions

if (mouse_check_button_pressed(mb_left) and mouse_x >= argument0 and mouse_x <= argument2 and mouse_y >= argument1 and mouse_y <= argument3){audio_play_sound(SFX_buttonClick, 2, false); return true}
else {return false}
    
