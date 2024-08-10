scoreboard players reset #snt_lib_dq_count get_components_library
$data modify storage get_components:extract lists.list_component_keys append string storage get_components:extract handling.string $(pos1) $(pos2)
data modify storage get_components:extract lists.list_component_keys[-1] set string storage get_components:extract lists.list_component_keys[-1] 0 -2
data modify storage get_components:extract lists.list_component_keys[-1] set string storage get_components:extract lists.list_component_keys[-1] 11
