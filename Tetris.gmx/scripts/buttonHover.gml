///mouseHover(x1, y1, x2, y2)
if (mouse_x >= argument0 and mouse_x <= argument2 and mouse_y >= argument1 and mouse_y <= argument3) {
//    if !oldAudioPlaying {audio_play_sound(SFX_buttonHover, 2, false); oldAudioPlaying = true}
    return true;
}
else {return false}
