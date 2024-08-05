# now executing as the shop owner and at their empty shop
data modify entity @n[tag=snt_shop_sign] data.shop_data.empty_shop_pos.x set string entity @n[tag=snt_shop_sign] Pos[0] 0 -3
data modify entity @n[tag=snt_shop_sign] data.shop_data.empty_shop_pos.y set string entity @n[tag=snt_shop_sign] Pos[1] 0 -3
data modify entity @n[tag=snt_shop_sign] data.shop_data.empty_shop_pos.z set string entity @n[tag=snt_shop_sign] Pos[2] 0 -3
tellraw @s [{"text":"your shop at ","color":"red"},{"nbt":"data.shop_data.empty_shop_pos.x","entity":"@n[tag=snt_shop_sign]"},{"text":" ","color":"red"},{"nbt":"data.shop_data.empty_shop_pos.y","entity":"@n[tag=snt_shop_sign]"},{"text":" ","color":"red"},{"nbt":"data.shop_data.empty_shop_pos.z","entity":"@n[tag=snt_shop_sign]"},{"text":" needs to be restocked","color":"red"}]
tellraw @s [{"text":"item: ","color":"green"},{"nbt":"data.shop_data.item_sign","entity":"@n[tag=snt_shop_sign]","color":"white"}]
execute if data entity @n[tag=snt_shop_sign] item.components run tellraw @s [{"text":"item nbt data: ","color":"green"},{"nbt":"item.components","entity":"@n[tag=snt_shop_sign]","color":"white"}]
data remove entity @n[tag=snt_shop_sign] data.shop_data.empty_shop_pos
