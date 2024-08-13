$data modify storage get_components:extract combining.place.start set from storage get_components:extract combining.list[$(comps_count)].comp
$data modify storage get_components:extract combining.place.end set from storage get_components:extract combining.list[$(comps_count_plus1)].comp
$data modify storage get_components:extract combining.place.entry set value '$(comps_count)'
execute if function sntlibrary:assemble/final/init_final run return 0

data modify block -14 -64 19 front_text.messages[2] set value '{"nbt":"combining.place.start","storage":"get_components:extract"}'
data modify storage get_components:extract combining.place.start set string block -14 -64 19 front_text.messages[2] 1 -1
data modify block -14 -64 19 front_text.messages[3] set value '{"nbt":"combining.place.end","storage":"get_components:extract"}'
data modify storage get_components:extract combining.place.end set string block -14 -64 19 front_text.messages[3] 1 -1
function sntlibrary:assemble/final/final_correction with storage get_components:extract combining.place
