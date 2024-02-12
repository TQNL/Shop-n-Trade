kill @e[tag=snt_potential_shop,sort=nearest,limit=1,distance=..0.4]
execute at @s if block ~ ~ ~ #wall_signs[facing=north] unless block ~ ~ ~1 #shop run return 0
execute at @s if block ~ ~ ~ #wall_signs[facing=east] unless block ~-1 ~ ~ #shop run return 0
execute at @s if block ~ ~ ~ #wall_signs[facing=south] unless block ~ ~ ~-1 #shop run return 0
execute at @s if block ~ ~ ~ #wall_signs[facing=west] unless block ~1 ~ ~ #shop run return 0

summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["snt_potential_shop"],ArmorItems:[{id:"minecraft:oak_sign",Count:1b,tag:{BlockEntityTag:{front_text:{messages:['{"text":"h"}','{"text":""}','{"text":""}','{"text":""}']}}}},{},{},{}]}
data modify entity @e[tag=snt_potential_shop,distance=..0.4,sort=nearest,limit=1] Rotation[0] set from entity @s Rotation[0]
execute as @e[tag=snt_potential_shop,sort=nearest,limit=1] at @s run function shop:potential_shop_new