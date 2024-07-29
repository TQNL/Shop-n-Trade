# clicked in sign: now executing as the player and at the sign

# relock container, incase unlocked (executing as the shop sign and at the shop container)
scoreboard players reset @e[tag=snt_shop_sign,sort=nearest,limit=1] snt_shop_test7_lock
execute unless data block ^ ^ ^1 Lock store success score @e[tag=snt_shop_sign,sort=nearest,limit=1] snt_shop_test7_lock run data modify block ^ ^ ^1 Lock set string entity @e[tag=snt_shop_sign,sort=nearest,limit=1] UUID[0]
execute if score @e[tag=snt_shop_sign,sort=nearest,limit=1] snt_shop_test7_lock matches 1 run tellraw @s {"text": "succesfully relocked shop","color": "blue"}
execute if score @e[tag=snt_shop_sign,sort=nearest,limit=1] snt_shop_test7_lock matches 1 run return run tag @s remove shop_owner_mode

# shop owner unlocks container
execute store success score @e[tag=snt_shop_sign,sort=nearest,limit=1] snt_shop_test6_owner positioned ^ ^ ^1 run data modify entity @e[tag=snt_shop_container,sort=nearest,limit=1] interaction.player set from entity @s UUID
execute if score @e[tag=snt_shop_sign,sort=nearest,limit=1] snt_shop_test6_owner matches 0 run data remove block ^ ^ ^1 Lock
execute if score @e[tag=snt_shop_sign,sort=nearest,limit=1] snt_shop_test6_owner matches 0 run tag @s add shop_owner_mode
execute if score @e[tag=snt_shop_sign,sort=nearest,limit=1] snt_shop_test6_owner matches 0 run return run tellraw @s {"text": "Shop unlocked, relocks once you are further than 32 blocks away or click the sign again!","color": "blue"}

scoreboard players reset @e[tag=snt_shop_sign,sort=nearest,limit=1] snt_shop_test6_owner
execute positioned ^ ^ ^1 run data modify entity @e[tag=snt_shop_container,sort=nearest,limit=1] interaction.player set from entity @e[tag=snt_shop_container,sort=nearest,limit=1] attack.player

# buy
#  detect if sold item has nbt data
execute at @e[tag=snt_shop_sign,sort=nearest,limit=1] positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 at @e[tag=snt_shop_container,sort=nearest,limit=1] if data block ~ ~ ~ Items[0].tag run function shop:buy2/shop_buy2 with entity @s
#  directly buy
execute as @e[tag=snt_shop_sign,sort=nearest,limit=1] at @s positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 at @e[tag=snt_shop_container,sort=nearest,limit=1] unless data block ~ ~ ~ Items[0].tag run function shop:buy2/shop_buy3
