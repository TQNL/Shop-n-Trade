$execute as @e[tag=snt_sell_item1,sort=nearest,limit=1,distance=..0.4] if entity @s[nbt={item:{id:"$(id)"}}] run return 0
execute positioned ^ ^ ^-1 align xyz positioned ~0.5 ~ ~0.5 as @e[tag=snt_shop_sign,sort=nearest,limit=1,distance=..0.4] at @s run function shop:potential_shop_new
