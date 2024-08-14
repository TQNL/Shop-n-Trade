# clicked in sign: now executing as the player and at the sign

# collect profits
execute if entity @s[tag=shop_owner_mode] at @n[tag=snt_shop_sign] unless data block ^ ^ ^1 Lock if score @n[tag=snt_shop_sign] snt_profits matches 1.. run return run function shop:collect_shop_profits with entity @n[tag=snt_shop_sign] data.shop_data

# relock container, incase unlocked (executing as the shop sign and at the shop container)
scoreboard players reset @n[tag=snt_shop_sign] snt_shop_test7_lock
execute as @n[tag=snt_shop_sign] at @s unless data block ^ ^ ^1 Lock store success score @s snt_shop_test7_lock run data modify block ^ ^ ^1 Lock set string entity @s UUID[0]
execute if score @n[tag=snt_shop_sign] snt_shop_test7_lock matches 1 run tellraw @s {"text": "succesfully relocked shop","color": "blue"}
execute if score @n[tag=snt_shop_sign] snt_shop_test7_lock matches 1 run return run tag @s remove shop_owner_mode

# shop owner unlocks container
#execute at @n[tag=snt_shop_sign] store success score @n[tag=snt_shop_sign] snt_shop_test6_owner positioned ^ ^ ^1 run data modify entity @n[tag=snt_shop_sign] data.shop_data.shop_owner_uuid set from entity @s UUID
#execute if score @n[tag=snt_shop_sign] snt_shop_test6_owner matches 0 run data remove block ^ ^ ^1 Lock
#execute if score @n[tag=snt_shop_sign] snt_shop_test6_owner matches 0 run tag @s add shop_owner_mode
#execute if score @n[tag=snt_shop_sign] snt_shop_test6_owner matches 0 run return run tellraw @s {"text": "Shop unlocked, relocks once you are further than 32 blocks away or click the sign again!","color": "blue"}
#instruction: uncomment ^
scoreboard players reset @n[tag=snt_shop_sign] snt_shop_test6_owner
execute positioned ^ ^ ^1 run data modify entity @n[tag=snt_shop_sign] data.shop_data.shop_owner_uuid set from entity @n[tag=snt_shop_sign] data.shop_data.shop_owner_uuid_backup

# buy
#  detect if sold item has nbt data
execute at @n[tag=snt_shop_sign] positioned ^ ^ ^1 if data block ~ ~ ~ Items[0].components run return run function shop:buy2/shop_buy2
#  directly buy
execute as @n[tag=snt_shop_sign] at @s positioned ^ ^ ^1 unless data block ~ ~ ~ Items[0].components run function shop:buy2/shop_buy3
