///sortLeaderboard(map) -- Returns a sorted list
var sortedList = ds_list_create(), mapToSort = argument0, currentStat, currentKey, recursions, totalRecursions = ds_map_size(argument0);
for (recursions = 0; recursions < totalRecursions; recursions ++) {
    currentKey = ds_map_find_first(mapToSort)
    var highestScore = 0, highestStat = 0, highestKey = 0;
    do {
        currentStat = ds_map_find_value(mapToSort, currentKey)
        if highestScore < ds_map_find_value(currentStat, ds_map_find_first(currentStat)) {
            highestScore = ds_map_find_value(currentStat, ds_map_find_first(currentStat))
            highestKey = currentKey
            highestStat = currentStat
        }       
        currentKey = ds_map_find_next(mapToSort, currentKey)
    } until(is_undefined(currentKey))
    ds_list_add(sortedList, highestStat)
    ds_map_delete(mapToSort, highestKey)
}

return sortedList
