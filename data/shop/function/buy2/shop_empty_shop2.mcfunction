# now executing as the shop owner and at their empty shop
data modify storage snt:empty_shop pos.x set string entity @n[tag=snt_shop_container,distance=..0.4] Pos[0] 0 -3
data modify storage snt:empty_shop pos.y set string entity @n[tag=snt_shop_container,distance=..0.4] Pos[1] 0 -3
data modify storage snt:empty_shop pos.z set string entity @n[tag=snt_shop_container,distance=..0.4] Pos[2] 0 -3
execute positioned ^ ^ ^-1 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage snt:shop_sign2 item_sign set string block ~ ~ ~ front_text.messages[2] 9 -2
tellraw @s [{"text":"your shop at ","color":"red"},{"nbt":"pos.x","storage":"snt:empty_shop"},{"text":" ","color":"red"},{"nbt":"pos.y","storage":"snt:empty_shop"},{"text":" ","color":"red"},{"nbt":"pos.z","storage":"snt:empty_shop"},{"text":" needs to be restocked","color":"red"}]
tellraw @s [{"text":"item: ","color":"green"},{"nbt":"item_sign","storage":"snt:shop_sign2","color":"white"}]
execute if data entity @n[tag=snt_sell_item1,distance=..0.4] item.tag run tellraw @s [{"text":"item nbt data: ","color":"green"},{"nbt":"item.tag","entity":"@n[tag=snt_sell_item1,distance=..0.4]","color":"white"}]
data remove storage snt:empty_shop pos
data remove storage snt:shop_sign2 item_sign