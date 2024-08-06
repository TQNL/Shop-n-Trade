$data modify storage get_components:extract handling.check set string storage get_components:extract strings.string2 $(iteration) $(iteration_plus)
execute store success score #snt_lib_check get_components_library run data modify storage get_components:extract handling.check set value '"'
$execute if score #snt_lib_check get_components_library matches 0 run return run function sntlibrary:5 {n:$(iteration)}

# if the check didnt detect a double slash
scoreboard players reset #snt_lib_check get_components_library
scoreboard players add #snt_lib_iteration get_components_library 1
scoreboard players add #snt_lib_iteration_plus get_components_library 1
execute store result storage get_components:extract handling.iteration int 1 run scoreboard players get #snt_lib_iteration get_components_library
execute store result storage get_components:extract handling.iteration_plus int 1 run scoreboard players get #snt_lib_iteration_plus get_components_library
function sntlibrary:4 with storage get_components:extract handling
