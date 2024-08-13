# init
data modify storage get_components:extract combining.component set from storage get_components:extract lists.list_component_keys_stripped[0].key
data modify storage get_components:extract combining.data set from storage get_components:extract lists.list_component_data[0].data

# check if the data is a text-based value with single quotes that get lost in the macro and fix
data modify storage get_components:extract sign.data set from storage get_components:extract combining.data
data modify block -14 -64 19 front_text.messages[1] set value '{"nbt":"sign","storage":"get_components:extract"}'
data modify storage get_components:extract sign.string set from block -14 -64 19 front_text.messages[1]
data modify storage get_components:extract sign.check set string storage get_components:extract sign.string 7 8
execute if data storage get_components:extract {sign:{check:"'"}} run return run function sntlibrary:assemble/3/fix_single_quotes/sq
data remove storage get_components:extract sign

# try the concatination the normal way
execute if function sntlibrary:assemble/3/init_3 run return 1

# nest intrinsic double quotes
data modify block -14 -64 19 front_text.messages[2] set value '{"nbt":"combining.data","storage":"get_components:extract"}'
data modify storage get_components:extract combining.data set string block -14 -64 19 front_text.messages[2] 1 -1
function sntlibrary:assemble/3/3_correction with storage get_components:extract combining
