# iterate
scoreboard players remove #snt_lib_comps_count get_components_library 1
execute store result storage get_components:extract combining.comps_count int 1 run scoreboard players get #snt_lib_comps_count get_components_library
function sntlibrary:assemble/2
data remove storage get_components:extract lists.list_component_keys_stripped[0]
data remove storage get_components:extract lists.list_component_data[0]
execute if data storage get_components:extract lists.list_component_keys_stripped[0] run function sntlibrary:assemble/1
