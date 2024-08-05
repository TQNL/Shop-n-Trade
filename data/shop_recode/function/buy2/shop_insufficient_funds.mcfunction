# refund
$give @p diamond $(refund)

scoreboard players reset @s snt_shop_item_count
scoreboard players reset @s snt_shop_test8_item_validation2
scoreboard players reset @s snt_shop_test2_check_funds
scoreboard players reset @s snt_shop_test3_refund_check

# free up storage
data remove storage snt:shop_sign2 pricing
data remove storage snt:shop_sign2 amount
data remove storage snt:shop_sign2 item_sign
data remove storage snt:shop_sign2 profits
data remove storage snt:shop_sign2 pricing_magnitude
data remove storage snt:shop_sign2 shop_owner
data remove storage snt:shop_sign2 refund
data remove storage snt:shop_sign2 nbt_data
