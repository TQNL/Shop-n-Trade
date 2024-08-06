scoreboard players reset * get_components_library
$data modify storage get_components:extract lists.list_component_keys append string storage get_components:extract strings.string2 0 $(n)
data modify storage get_components:extract lists.list_component_keys[-1] set string storage get_components:extract lists.list_component_keys[-1] 0 -1
# add `=` in the string concatination
data remove storage get_components:extract handling
data remove storage get_components:extract strings.string2
say done