/// rotatePiece(currentMino, direction) -- Rotates the current piece
// returns a rotated 90 degree piece
var piece, r, c, tempR, tempC, tempY;

if sign(argument1) == -1 {
    tempR = (array_height_2d(argument0) - 1); tempC = (array_length_2d(argument0, tempR) - (array_length_2d(argument0, tempR)));
    gameMaster.currentRotation = gameMaster.currentRotation - 90
    for(r = (array_height_2d(argument0) - 1); r > -1; r --){
        
        for(c = (array_length_2d(argument0, r) - 1); c > -1; c --) {
            piece[tempC, tempR] = argument0[r, c]
            tempC ++
        }
        tempC = (array_length_2d(argument0, tempR) - (array_length_2d(argument0, tempR)))
        tempR --
    }
}

else if sign(argument1) == 1 {
    tempR = 0;
    gameMaster.currentRotation = gameMaster.currentRotation + 90
    for(r = (array_height_2d(argument0) - 1); r > -1; r --){
        for(c = (array_length_2d(argument0, r) - 1); c > -1; c --) {
            piece[c, tempR] = argument0[r, c]
        }
        tempR ++
    }
   
}

tempY = 0
if checkForOverlapping(gameMaster.mainMatrix, piece, gameMaster.positionX, gameMaster.positionY) return piece
else if checkForOverlapping(gameMaster.mainMatrix, piece, gameMaster.positionX - 1, gameMaster.positionY){gameMaster.positionX = gameMaster.positionX - 1; gameMaster.positionY = gameMaster.positionY return piece}
else if checkForOverlapping(gameMaster.mainMatrix, piece, gameMaster.positionX + 1, gameMaster.positionY){gameMaster.positionX = gameMaster.positionX + 1; gameMaster.positionY = gameMaster.positionY return piece}
else if checkForOverlapping(gameMaster.mainMatrix, piece, gameMaster.positionX - 2, gameMaster.positionY){gameMaster.positionX = gameMaster.positionX - 2; gameMaster.positionY = gameMaster.positionY return piece}
else if checkForOverlapping(gameMaster.mainMatrix, piece, gameMaster.positionX + 2, gameMaster.positionY){gameMaster.positionX = gameMaster.positionX + 2; gameMaster.positionY = gameMaster.positionY return piece}
else do tempY ++; until(!checkForOverlapping(gameMaster.mainMatrix, piece, gameMaster.positionX, tempY)) {gameMaster.positionY = tempY - 1; return piece}
