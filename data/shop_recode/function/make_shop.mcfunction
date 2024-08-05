kill @n[tag=snt_potential_shop,distance=..0.4]
execute at @s if block ~ ~ ~ #wall_signs[facing=north] unless block ~ ~ ~1 #shop_recode:shop run return 0
execute at @s if block ~ ~ ~ #wall_signs[facing=east] unless block ~-1 ~ ~ #shop_recode:shop run return 0
execute at @s if block ~ ~ ~ #wall_signs[facing=south] unless block ~ ~ ~-1 #shop_recode:shop run return 0
execute at @s if block ~ ~ ~ #wall_signs[facing=west] unless block ~1 ~ ~ #shop_recode:shop run return 0

execute at @s if block ~ ~ ~ #wall_signs[facing=north] align xyz run summon marker ~0.5 ~0.5 ~0.5 {Tags:["snt_potential_shop"]}
execute at @s if block ~ ~ ~ #wall_signs[facing=east] align xyz run summon marker ~0.5 ~0.5 ~0.5 {Rotation:[90F,0F],Tags:["snt_potential_shop"]}
execute at @s if block ~ ~ ~ #wall_signs[facing=south] align xyz run summon marker ~0.5 ~0.5 ~0.5 {Rotation:[-180F,0F],Tags:["snt_potential_shop"]}
execute at @s if block ~ ~ ~ #wall_signs[facing=west] align xyz run summon marker ~0.5 ~0.5 ~0.5 {Rotation:[-90F,0F],Tags:["snt_potential_shop"]}
execute as @n[type=marker,tag=snt_potential_shop] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run function shop_recode:potential_new_shop1
