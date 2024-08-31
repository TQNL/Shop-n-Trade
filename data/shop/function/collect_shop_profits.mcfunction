# clicked in sign: now executing as the player and at the sign
$give @s diamond $(stored_profits)
scoreboard players reset @n[type=marker,tag=snt_shop_sign] snt_profits
tellraw @s {"text": "Succesfully collected profits","color": "aqua"}
$scoreboard players add $(shop_owner) snt_total_profits $(stored_profits)
data remove entity @n[type=marker,tag=snt_shop_sign] data.shop_data.stored_profits