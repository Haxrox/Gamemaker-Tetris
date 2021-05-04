/// clearLines(mainMatrix) -- Returns the main matrix
var rowsCleared = 0, num;

lineStatuses[1] = "Single!"
lineStatuses[2] = "Double!"
lineStatuses[3] = "Triple!"
lineStatuses[4] = "Tetris!"

for(row = (array_height_2d(argument0) - 1); row > -1; row --){
    num = 0
    for(matrixColumn = (array_length_2d(argument0, row) - 1); matrixColumn > -1; matrixColumn --) {
        if argument0[row, matrixColumn] != 0 num = num + 1
        if num >= 10 {
            for (clearColumn = (array_length_2d(argument0, row) - 1); clearColumn > -1; clearColumn --) {
                argument0[row, clearColumn] = 0
                for(dropRows = (row - 1); dropRows > -1; dropRows --){
                   argument0[dropRows + 1, clearColumn] = argument0[dropRows, clearColumn]
                   argument0[dropRows, clearColumn] = 0
                }
            }
            rowsCleared ++
            row ++
        }
    }
}

if (rowsCleared == 0) {
    gameMaster.combo = ''
    gameMaster.clearStats = ''
}
else {
    if (string_pos(lineStatuses[rowsCleared], gameMaster.clearStats) != 0) {
        gameMaster.clearStats = "Back-to-back " + lineStatuses[rowsCleared]
        POINTS = POINTS + (rowsCleared * 100 * 0.5)
    }
    else { 
        gameMaster.clearStats = lineStatuses[rowsCleared]; 
        POINTS = POINTS + (rowsCleared * 100)
    }
    if (gameMaster.combo == '') {
        gameMaster.combo = 0
        gameMaster.combo ++
    }
    else {gameMaster.combo ++ }
    POINTS = POINTS + (gameMaster.combo * 50)
}

for(row = (array_height_2d(argument0) - 1); row > 0; row --){
    for(matrixColumn = (array_length_2d(argument0, row) - 1); matrixColumn > -1; matrixColumn --) {
        if argument0[row, matrixColumn] != 0 return argument0
    }
}
gameMaster.clearStats = "Perfect Clear!"; 
POINTS = POINTS + 500

return argument0

