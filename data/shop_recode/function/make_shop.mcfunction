kill @n[tag=snt_potential_shop,distance=..0.4]
execute at @s if block ~ ~ ~ #wall_signs[facing=north] unless block ~ ~ ~1 #shop run return 0
execute at @s if block ~ ~ ~ #wall_signs[facing=east] unless block ~-1 ~ ~ #shop run return 0
execute at @s if block ~ ~ ~ #wall_signs[facing=south] unless block ~ ~ ~-1 #shop run return 0
execute at @s if block ~ ~ ~ #wall_signs[facing=west] unless block ~1 ~ ~ #shop run return 0

execute at @s if block ~ ~ ~ #wall_signs[facing=north] run summon marker ~ ~ ~ {Tags:["snt_potential_shop"]}
execute at @s if block ~ ~ ~ #wall_signs[facing=east] run summon marker ~ ~ ~ {Rotation:[90F,0F],Tags:["snt_potential_shop"]}
execute at @s if block ~ ~ ~ #wall_signs[facing=south] run summon marker ~ ~ ~ {Rotation:[-180F,0F],Tags:["snt_potential_shop"]}
execute at @s if block ~ ~ ~ #wall_signs[facing=west] run summon marker ~ ~ ~ {Rotation:[-90F,0F],Tags:["snt_potential_shop"]}
execute as @n[type=marker,tag=snt_potential_shop] at @s run function shop_recode:potential_new_shop1
