# clicked in sign: now executing as the player and at the sign
$give @s diamond $(stored_profits)
scoreboard players reset @n[tag=snt_shop_sign] snt_profits
tellraw @s {"text": "Succesfully collected profits","color": "aqua"}
