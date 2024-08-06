scoreboard players reset * get_components_library
$data modify storage get_components:extract lists.list_component_keys append string storage get_components:extract strings.string 11 $(n)
data modify storage get_components:extract lists.list_component_keys[-1] set string storage get_components:extract lists.list_component_keys[-1] 0 -1
$data modify storage get_components:extract strings.string set string storage get_components:extract strings.string $(n_plus)

scoreboard players set #snt_lib_iteration get_components_library 1
scoreboard players set #snt_lib_iteration_plus get_components_library 2
function sntlibrary:4 {iteration:1,iteration_plus:2}
