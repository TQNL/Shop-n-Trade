# store profits in the shop signs 'account'
$execute store result entity @s data.shop_data.stored_profits int 1 run scoreboard players add @s snt_profits $(pricing)

# free up storage
data remove entity @s data.shop_data.profits
data remove entity @s data.shop_data.pricing_magnitude
data remove entity @s data.shop_data.refund
data remove entity @s data.shop_data.nbt_data
