data modify block ^ ^ ^1 Lock set string entity @n[tag=snt_shop_sign] UUID[0]
tag @s remove shop_owner_mode
tellraw @s {"text": "succesfully relocked shop","color": "blue"}
data remove storage snt:shop_sign2 shop_owner
