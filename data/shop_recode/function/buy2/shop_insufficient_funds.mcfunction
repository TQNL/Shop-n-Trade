# refund
$give @p diamond $(refund)

scoreboard players reset @s snt_shop_item_count
scoreboard players reset @s snt_shop_test8_item_validation2
scoreboard players reset @s snt_shop_test2_check_funds
scoreboard players reset @s snt_shop_test3_refund_check

# free up storage
data remove entity @s data.shop_data.profits
data remove entity @s data.shop_data.pricing_magnitude
data remove entity @s data.shop_data.refund
data remove entity @s data.shop_data.nbt_data
