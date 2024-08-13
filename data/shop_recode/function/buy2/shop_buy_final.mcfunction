# store profits in the shop owners 'account'
$scoreboard players add $(shop_owner) snt_profits $(pricing)

#scoreboard players reset @s snt_shop_item_count

# free up storage
data remove entity @s data.shop_data.profits
data remove entity @s data.shop_data.pricing_magnitude
data remove entity @s data.shop_data.refund
data remove entity @s data.shop_data.nbt_data
