# give items to the player
$loot give @p loot {"pools":[{"rolls":1,"entries":[{"type":"minecraft:item","name":"$(item_sign)"}],"functions":[{"function":"minecraft:set_count","count":$(amount)},{"function":"minecraft:set_components","components":$(nbt_data)}]}]}

# store profits in the shop owners 'account'
$scoreboard players add $(shop_owner) snt_profits $(pricing)

#scoreboard players reset @s snt_shop_item_count

# free up storage
data remove storage snt:shop_sign2 pricing
data remove storage snt:shop_sign2 amount
data remove storage snt:shop_sign2 item_sign
data remove storage snt:shop_sign2 profits
data remove storage snt:shop_sign2 pricing_magnitude
data remove storage snt:shop_sign2 shop_owner
data remove storage snt:shop_sign2 refund
data remove storage snt:shop_sign2 nbt_data
