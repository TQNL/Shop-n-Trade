# raycast done
execute if block ~ ~ ~ #wall_signs align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[tag=snt_shop_sign,distance=..0.4] run function shop:make_shop
execute if block ~ ~ ~ #wall_signs run return 0

# further raycast, in unsuccesful case
execute if entity @s[distance=..5] positioned ^ ^ ^0.1 run function shop:shop_make_ray_cast
