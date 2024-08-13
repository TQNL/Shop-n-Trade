# store profits in the shop owners 'account'
$scoreboard players add $(shop_owner) snt_profits $(pricing)

# free up storage
data remove entity @s data.shop_data.profits
data remove entity @s data.shop_data.pricing_magnitude
data remove entity @s data.shop_data.refund
data remove entity @s data.shop_data.nbt_data
