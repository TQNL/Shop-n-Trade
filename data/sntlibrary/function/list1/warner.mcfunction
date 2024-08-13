scoreboard players add #snt_lib_sq_counter get_components_library 1
scoreboard players operation #snt_lib_sq_counter get_components_library %= #two get_components_library

execute if score #snt_lib_sq_counter get_components_library matches 0 run scoreboard players reset #snt_lib_sq_counter get_components_library
