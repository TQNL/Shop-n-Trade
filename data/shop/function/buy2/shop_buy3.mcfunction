# now executing as the shop sign and at the shop container

# double chest
execute unless data block ~ ~ ~ Items[0] if block ~ ~ ~ chest[type=right,facing=north] if data block ~-1 ~ ~ Items[0] run execute positioned ~-1 ~ ~ run function shop:buy/double_chest2/negx
execute unless data block ~ ~ ~ Items[0] if block ~ ~ ~ chest[type=right,facing=east] if data block ~ ~ ~-1 Items[0] run execute positioned ~ ~ ~-1 run function shop:buy/double_chest2/negz
execute unless data block ~ ~ ~ Items[0] if block ~ ~ ~ chest[type=right,facing=south] if data block ~1 ~ ~ Items[0] run execute positioned ~1 ~ ~ run function shop:buy/double_chest2/posx
execute unless data block ~ ~ ~ Items[0] if block ~ ~ ~ chest[type=right,facing=west] if data block ~ ~ ~1 Items[0] run execute positioned ~ ~ ~1 run function shop:buy/double_chest2/posz
execute unless data block ~ ~ ~ Items[0] if block ~ ~ ~ chest[type=left,facing=north] if data block ~1 ~ ~ Items[0] run execute positioned ~1 ~ ~ run function shop:buy/double_chest2/posx
execute unless data block ~ ~ ~ Items[0] if block ~ ~ ~ chest[type=left,facing=east] if data block ~ ~ ~1 Items[0] run execute positioned ~ ~ ~1 run function shop:buy/double_chest2/posz
execute unless data block ~ ~ ~ Items[0] if block ~ ~ ~ chest[type=left,facing=south] if data block ~-1 ~ ~ Items[0] run execute positioned ~-1 ~ ~ run function shop:buy/double_chest2/negx
execute unless data block ~ ~ ~ Items[0] if block ~ ~ ~ chest[type=left,facing=west] if data block ~ ~ ~-1 Items[0] run execute positioned ~ ~ ~-1 run function shop:buy/double_chest2/negz

execute store result storage snt:shop_sign2 pricing short 1 run scoreboard players get @s snt_shop_pricing
data modify storage snt:shop_sign2 pricing set string storage snt:shop_sign2 pricing 0 -1
execute store result storage snt:shop_sign2 amount short 1 run scoreboard players get @s snt_shop_amount
data modify storage snt:shop_sign2 amount set string storage snt:shop_sign2 amount 0 -1
execute at @s run data modify storage snt:shop_sign2 item_sign set string block ~ ~ ~ front_text.messages[2] 9 -2

execute at @e[tag=snt_shop_container,sort=nearest,limit=1,distance=..0.4] run function shop:buy2/shop_buy_single_container with storage snt:shop_sign2
