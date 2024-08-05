# now executing as the player and at the shop container with nbt data in the sold item
execute unless entity @s[tag=snt_buying_nbt_item] run return run function shop:buy2/shop_buy_tell_nbt

# tag gets added to the player in function shop:buy2/shop_buy_tell_nbt - delete in ticking function if they move
tag @s remove snt_buying_nbt_item
execute positioned ^ ^ ^-1 as @n[tag=snt_shop_sign] positioned ^ ^ ^1 run function shop:buy2/shop_buy3