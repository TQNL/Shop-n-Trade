# assuming the player called this function, at their location:

forceload add -14 19

# instruction: make source configurable
# intruction: make the situation of no components directly return `[]`

setblock -14 -64 19 oak_sign{front_text:{messages:['{"nbt":"SelectedItem.components","entity":"@p"}','{"text":""}','{"text":""}','{"text":""}']}} replace
data modify storage get_components:extract strings.string set string block -14 -64 19 front_text.messages[0] 3
tellraw @p {"nbt":"get_components:extract","storage":"strings.string"}
function sntlibrary:1

#data remove storage get_components:extract strings.string
# instruction: clean other data
#clone -14 -64 18 -14 -64 18 -14 -64 19
forceload remove -14 19
