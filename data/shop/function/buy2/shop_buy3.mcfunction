# now executing as the shop sign and at the shop container

# double chest
execute unless data block ~ ~ ~ Items[0] if block ~ ~ ~ chest[type=right,facing=north] if data block ~-1 ~ ~ Items[0] positioned ~-1 ~ ~ run function shop:buy2/double_chest2/negx
execute unless data block ~ ~ ~ Items[0] if block ~ ~ ~ chest[type=right,facing=east] if data block ~ ~ ~-1 Items[0] positioned ~ ~ ~-1 run function shop:buy2/double_chest2/negz
execute unless data block ~ ~ ~ Items[0] if block ~ ~ ~ chest[type=right,facing=south] if data block ~1 ~ ~ Items[0] positioned ~1 ~ ~ run function shop:buy2/double_chest2/posx
execute unless data block ~ ~ ~ Items[0] if block ~ ~ ~ chest[type=right,facing=west] if data block ~ ~ ~1 Items[0] positioned ~ ~ ~1 run function shop:buy2/double_chest2/posz
execute unless data block ~ ~ ~ Items[0] if block ~ ~ ~ chest[type=left,facing=north] if data block ~1 ~ ~ Items[0] positioned ~1 ~ ~ run function shop:buy2/double_chest2/posx
execute unless data block ~ ~ ~ Items[0] if block ~ ~ ~ chest[type=left,facing=east] if data block ~ ~ ~1 Items[0] positioned ~ ~ ~1 run function shop:buy2/double_chest2/posz
execute unless data block ~ ~ ~ Items[0] if block ~ ~ ~ chest[type=left,facing=south] if data block ~-1 ~ ~ Items[0] positioned ~-1 ~ ~ run function shop:buy2/double_chest2/negx
execute unless data block ~ ~ ~ Items[0] if block ~ ~ ~ chest[type=left,facing=west] if data block ~ ~ ~-1 Items[0] positioned ~ ~ ~-1 run function shop:buy2/double_chest2/negz

function shop:buy2/shop_buy4 with entity @s data.shop_data
