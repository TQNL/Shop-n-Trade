scoreboard players add #snt_lib_dq_count get_components_library 1
scoreboard players operation #snt_lib_dq_count get_components_library %= #two get_components_library

execute if score #snt_lib_dq_count get_components_library matches 1 store result storage get_components:extract handling.dq.pos1 int 1 run scoreboard players get #snt_lib_iteration get_components_library
execute if score #snt_lib_dq_count get_components_library matches 0 store result storage get_components:extract handling.dq.pos2 int 1 run scoreboard players get #snt_lib_iteration_plus get_components_library
