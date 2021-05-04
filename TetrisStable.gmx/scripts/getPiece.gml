/// getPiece() -- returns the next piece in the bag
var copies, nextPieces, addingPiece;
do {
    addingPiece = PIECES[irandom(array_length_1d(PIECES) - 1)]
    copies = 0
    for (index = 0; index < ds_list_size(gameMaster.minoBag); index ++) {
        if (ds_list_find_value(gameMaster.minoBag, index) == addingPiece) {
            copies ++
        }
    } 
}
until (copies < 2)

ds_list_add(gameMaster.minoBag, addingPiece)    
nextPiece = ds_list_find_value(gameMaster.minoBag, 0)
ds_list_delete(gameMaster.minoBag, 0)
gameMaster.ghostY = 0
gameMaster.currentRotation = 0
gameMaster.positionX = 3
gameMaster.positionY = 0
return nextPiece
