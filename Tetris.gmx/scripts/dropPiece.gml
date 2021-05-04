/// dropPiece(mainMatrix, currentMino, positionX, positionY) -- returns the main matrix
var tempY = argument3;
do argument3 ++; until(!checkForOverlapping(argument0, argument1, argument2, argument3))
POINTS = POINTS + argument3 - 1 - tempY
argument0 = drawOnMainMatrix(argument0, argument1, argument2, argument3 - 1)
argument0 = clearLines(argument0) 
gameMaster.currentMino = getPiece()
gameMaster.hold = false
if !checkForOverlapping(argument0, argument1, gameMaster.positionX, gameMaster.positionY) {show_message("You received a score of " + string(POINTS) + "!"); room_restart(); room_goto(GameOver);}
audio_play_sound(SFX_Drop, 0, false)
return argument0

