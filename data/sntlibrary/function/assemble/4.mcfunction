# iterate
## remove early to get 0 as an index
scoreboard players operation #snt_lib_comps_count_plus1 get_components_library = #snt_lib_comps_count get_components_library
scoreboard players remove #snt_lib_comps_count get_components_library 1
execute store result storage get_components:extract combining.comps_count int 1 run scoreboard players get #snt_lib_comps_count get_components_library
execute store result storage get_components:extract combining.comps_count_plus1 int 1 run scoreboard players get #snt_lib_comps_count_plus1 get_components_library

function sntlibrary:assemble/5 with storage get_components:extract combining

execute unless score #snt_lib_comps_count get_components_library matches ..0 run function sntlibrary:assemble/4
