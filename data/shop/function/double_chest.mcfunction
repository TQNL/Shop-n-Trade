# now executing as the shop sign and at the shop container
return 0
execute unless data block ~ ~ ~ Items[0] run return 0
execute unless data block ~ ~ ~ Items[1] run return 0
scoreboard players reset @s snt_double_chest_count
scoreboard players reset @s snt_double_chest_count2
execute store result score @s snt_double_chest_count run data get block ~ ~ ~ Items[0].Count
execute if score @s snt_double_chest_count matches 64 run return 0
execute store result score @s snt_double_chest_count2 run data get block ~ ~ ~ Items[1].Count
execute if score @s snt_double_chest_count2 matches 16 if score @s snt_double_chest_count matches 16 run return 0
execute if score @s snt_double_chest_count2 matches 1 if score @s snt_double_chest_count matches 1 run return 0

execute if block ~ ~ ~ chest[type=right,facing=north] positioned ~-1 ~ ~ run function shop:buy/double_chest/negx
execute if block ~ ~ ~ chest[type=right,facing=east] positioned ~ ~ ~-1 run function shop:buy/double_chest/negz
execute if block ~ ~ ~ chest[type=right,facing=south] positioned ~1 ~ ~ run function shop:buy/double_chest/posx
execute if block ~ ~ ~ chest[type=right,facing=west] positioned ~ ~ ~1 run function shop:buy/double_chest/posz
execute if block ~ ~ ~ chest[type=left,facing=north] positioned ~1 ~ ~ run function shop:buy/double_chest/posx
execute if block ~ ~ ~ chest[type=left,facing=east] positioned ~ ~ ~1 run function shop:buy/double_chest/posz
execute if block ~ ~ ~ chest[type=left,facing=south] positioned ~-1 ~ ~ run function shop:buy/double_chest/negx
execute if block ~ ~ ~ chest[type=left,facing=west] positioned ~ ~ ~-1 run function shop:buy/double_chest/negz
