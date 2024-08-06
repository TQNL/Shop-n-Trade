scoreboard players reset * get_components_library
$data modify storage get_components:extract strings.string set string storage get_components:extract strings.string $(n_plus)
data modify storage get_components:extract strings.string set string storage get_components:extract strings.string 1
# add `=` in the string concatination
data remove storage get_components:extract handling
say done

execute if data storage get_components:extract lists.list_component_keys[1] run return 0

scoreboard players set #snt_lib_iteration get_components_library 1
scoreboard players set #snt_lib_iteration_plus get_components_library 2
function sntlibrary:2 {iteration:1,iteration_plus:2}
