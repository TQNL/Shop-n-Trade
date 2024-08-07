scoreboard players reset * get_components_library
$data modify storage get_components:extract strings.string set string storage get_components:extract strings.string $(n_plus)
data modify storage get_components:extract strings.string set string storage get_components:extract strings.string 1
# add `=` in the string concatination
data remove storage get_components:extract handling
say done

#execute if data storage get_components:extract {strings:{string:'"'}} run say terminated
#execute if data storage get_components:extract {strings:{string:'"'}} run return run data remove storage get_components:extract strings

tellraw @p {"nbt":"strings.string","storage":"get_components:extract"}
function sntlibrary:1
