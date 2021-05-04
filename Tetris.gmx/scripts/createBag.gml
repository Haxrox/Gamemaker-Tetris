///createBag(pieces) -- creates a new bag of pieces

var num, bag = ds_list_create();

for (i = 0; i <= 6; i ++) {
    ds_list_add(bag, argument0[i])
    ds_list_shuffle(bag)
}

return bag
