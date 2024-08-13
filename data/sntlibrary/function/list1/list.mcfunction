# make component lists
scoreboard players reset #snt_lib_dq_count get_components_library
$data modify storage get_components:extract handling.concat set string storage get_components:extract handling.string $(pos1) $(pos2)
data modify storage get_components:extract handling.concat set string storage get_components:extract handling.concat 0 -2
data modify storage get_components:extract handling.concat set string storage get_components:extract handling.concat 1
data modify storage get_components:extract lists.list_component_keys_stripped append value {key:''}
function sntlibrary:list1/concat with storage get_components:extract handling

data modify storage get_components:extract handling.concat set string storage get_components:extract handling.concat 10
function sntlibrary:list1/other_concat with storage get_components:extract handling
data modify storage get_components:extract lists.list_component_keys_stripped[-1].key set from storage get_components:extract handling.concat

# make list of accompanying nbt data
function sntlibrary:list2/list_iteration
