scoreboard players reset * get_components_library
$data modify storage get_components:extract lists.list_component_keys append string storage get_components:extract strings.string 11 $(n)
data modify storage get_components:extract lists.list_component_keys[-1] set string storage get_components:extract lists.list_component_keys[-1] 0 -1
$data modify storage get_components:extract strings.string set string storage get_components:extract strings.string $(n_plus)

data modify storage get_components:extract strings.string set string storage get_components:extract strings.string 1
data modify storage get_components:extract handling.check set string storage get_components:extract strings.string 0 1
execute store success score #snt_lib_check get_components_library run data modify storage get_components:extract handling.check set value '{'
scoreboard players set #snt_lib_iteration get_components_library 1
scoreboard players set #snt_lib_iteration_plus get_components_library 2
execute if score #snt_lib_check get_components_library matches 0 run return run function sntlibrary:special

scoreboard players reset * get_components_library
scoreboard players set #snt_lib_iteration get_components_library 1
scoreboard players set #snt_lib_iteration_plus get_components_library 2
function sntlibrary:4 {iteration:1,iteration_plus:2}
