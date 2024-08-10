execute if score #snt_lib_check get_components_library matches 1 run data modify storage get_components:extract strings.string set string storage get_components:extract strings.string 1
data modify storage get_components:extract handling.check set string storage get_components:extract strings.string 0 1
execute store success score #snt_lib_check get_components_library run data modify storage get_components:extract handling.check set value '"'
execute if score #snt_lib_check get_components_library matches 1 run function sntlibrary:special1
