# assuming the player called this function, at their location:

forceload add -14 19

# instruction: make source configurable

setblock -14 -64 19 oak_sign{front_text:{messages:['{"nbt":"SelectedItem.components","entity":"@p"}','{"text":""}','{"text":""}','{"text":""}']}} replace
data modify storage get_components:extract string set string block -14 -64 19 front_text.messages[0]
scoreboard players set #iteration get_components_library 0
function sntlibrary:2 {iteration:0}

data remove storage get_components:extract string
# instruction: clean other data
execute if block -14 -64 18 bedrock run setblock -14 -64 19 bedrock
forceload remove -14 19
