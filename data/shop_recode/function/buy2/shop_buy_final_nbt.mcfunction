# give items to the player
$loot give @p loot {"pools":[{"rolls":1,"entries":[{"type":"minecraft:item","name":"$(item_sign)"}],"functions":[{"function":"minecraft:set_count","count":$(amount)},{"function":"minecraft:set_components","components":$(nbt_data)}]}]}

# store profits in the shop owners 'account'
$scoreboard players add $(shop_owner) snt_profits $(pricing)

#scoreboard players reset @s snt_shop_item_count

# free up storage
data remove entity @s data.shop_data.profits
data remove entity @s data.shop_data.pricing_magnitude
data remove entity @s data.shop_data.refund
data remove entity @s data.shop_data.nbt_data
