execute store result score #snt_lib_comps_count get_components_library run data get storage get_components:extract lists.list_component_keys_stripped
function sntlibrary:assemble/1

execute store result score #snt_lib_comps_count get_components_library run data get storage get_components:extract combining.list
scoreboard players remove #snt_lib_comps_count get_components_library 1
execute if data storage get_components:extract combining.list[1].comp run function sntlibrary:assemble/4

data modify storage get_components:extract components_command set from storage get_components:extract combining.list[0].comp
data modify storage get_components:extract components_command set string storage get_components:extract components_command 1
data remove storage get_components:extract combining
data remove storage get_components:extract lists
