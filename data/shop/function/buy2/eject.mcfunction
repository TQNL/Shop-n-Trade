# with the item as a macro
$execute unless data entity @s data.item_storage.list[{id:"$(id)"}] run data modify entity @s data.item_storage.list append value {id:"$(id)",count:0}
$execute if data block ~ ~ ~ Items[{Slot:$(Slot)b}].components run data modify entity @s data.item_storage.list[{id:"$(id)"}].components set from block ~ ~ ~ Items[{Slot:$(Slot)b}].components

$data modify entity @s data.item_storage.hold set from block ~ ~ ~ Items[{Slot:$(Slot)b}]
data remove entity @s data.item_storage.hold.Slot
$execute store result score @s snt_total_count_storage run data get entity @s data.item_storage.list[{id:"$(id)"}].count
function shop:buy2/count with entity @s data.item_storage.hold
$execute store result entity @s data.item_storage.list[{id:"$(id)"}].count int 1 run scoreboard players get @s snt_total_count_storage

scoreboard players reset @s snt_total_count_storage
data remove entity @s data.item_storage.hold
$item replace block ~ ~ ~ container.$(Slot) with air
