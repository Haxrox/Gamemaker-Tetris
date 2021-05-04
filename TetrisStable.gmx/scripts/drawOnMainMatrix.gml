/// drawOnMainMatrix(mainMatrix, currentMino, positionX, positionY)
// mainMatrix = The main matrix
// currentMino = The temporary mino matrix
// PositionX = X position on the main matrix
// PositionY = Y position on the main matrix
for(drawMinoR = (array_height_2d(argument1) - 1); drawMinoR > -1; drawMinoR --){
    for(drawMinoC = (array_length_2d(argument1, drawMinoR) - 1); drawMinoC > -1; drawMinoC --) {
        if argument1[drawMinoR, drawMinoC] != 0 {argument0[argument3 + drawMinoR, argument2 + drawMinoC] = argument1[drawMinoR, drawMinoC]}
    }   
}
return argument0 
