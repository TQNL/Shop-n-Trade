## probably works in other dimensions

data remove storage get_components:extract item_id
$data modify storage get_components:extract item_id set from $(source) $(target) $(path).id
data remove storage get_components:extract item_count
$data modify storage get_components:extract item_count set from $(source) $(target) $(path).count
data remove storage get_components:extract source
data remove storage get_components:extract target
data remove storage get_components:extract path

##data remove storage get_components:extract lists_backup
data remove storage get_components:extract combining
data remove storage get_components:extract components_command

$data merge storage get_components:extract {handling:{get:{source:'$(source)',target:'$(target)',path:'$(path)'}}}
data modify storage get_components:extract source set from storage get_components:extract handling.get.source
data modify storage get_components:extract target set from storage get_components:extract handling.get.target
data modify storage get_components:extract path set from storage get_components:extract handling.get.path

$execute unless data $(source) $(target) $(path).components run return run function sntlibrary:clear_components

forceload add -14 19

$data modify storage get_components:extract handling.store_data set from $(source) $(target) $(path).components
setblock -14 -64 19 oak_sign{front_text:{messages:['{"nbt":"handling.store_data","storage":"get_components:extract"}','{"text":""}','{"text":""}','{"text":""}']}} replace
data modify storage get_components:extract handling.string set string block -14 -64 19 front_text.messages[0] 3 -1
scoreboard players set #snt_lib_iteration get_components_library 0
scoreboard players set #snt_lib_iteration_plus get_components_library 1
execute store result score #snt_lib_string_length get_components_library run data get storage get_components:extract handling.string
function sntlibrary:list1/iterate {iteration:0,iteration_plus:1}


# assemble whole components-based command structure
##data modify storage get_components:extract lists_backup set from storage get_components:extract lists
function sntlibrary:assemble/init
scoreboard players reset * get_components_library
scoreboard players set #two get_components_library 2
data remove storage get_components:extract handling


# clean leftovers from setup, all data except the command structure and a backup of the lists are cleared in function sntlibrary:assemble/init
clone -14 -64 18 -14 -64 18 -14 -64 19
forceload remove -14 19
