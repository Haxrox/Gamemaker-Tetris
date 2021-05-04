/// checkForOverlapping(mainMatrix, currentMino, positionX, positionY)
// argument0: mainMatrix = The main matrix
// argument1: currentMino = The temporary mino matrix
// argument2: PositionX = X position on the main matrix
// argument3: PositionY = Y position on the main matrix
for(r = (array_height_2d(argument1) - 1); r > -1; r --){
    for(c = (array_length_2d(argument1, r) - 1); c > -1; c --) { 
        if argument1[r, c] != 0 {
            if argument2 + c > 9 or argument2 + c < 0 or argument3 + r > 25 {
                return false
                break
            }
            else if (argument0[argument3 + r, argument2 + c] != 0 or argument3 + r > 25) {
                return false
                break
            }
        }
    }
}

return true
