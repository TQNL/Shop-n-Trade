# now executing as the player and at the shop container with nbt data in the sold item
execute unless score @s shop_dp_isWalking matches 0.. unless score @s shop_dp_isSprinting matches 0.. unless score @s shop_dp_isCrouching matches 0.. run return run function shop:buy2/shop_buy_tell_nbt

# scores get added for the player in function shop:buy2/shop_buy_tell_nbt - reset in ticking function if they move, so they are 0, or non-existing

execute positioned ^ ^ ^-1 as @n[tag=snt_shop_sign] positioned ^ ^ ^1 run function shop:buy2/shop_buy3