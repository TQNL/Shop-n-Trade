# now executing as the shop sign and at the shop container

# payment
#  formulate command (short[-32,768;32,767])
$execute store success score @s snt_shop_test2_check_funds store result score @s snt_shop_test3_refund_check run clear @p diamond $(pricing)


# remove items from the shop
# see later function


# funds check
execute if score @s snt_shop_test2_check_funds matches 0 unless score @s snt_shop_test3_refund_check = @s snt_shop_pricing run tag @e remove snt_buying_in_progress
#execute if score @s snt_shop_test2_check_funds matches 0 run tellraw @p {"text": "insufficient funds","color": "red"}
execute unless score @s snt_shop_test3_refund_check = @s snt_shop_pricing run tellraw @p {"text": "insufficient funds","color": "red"}
execute unless score @s snt_shop_test3_refund_check = @s snt_shop_pricing store result storage snt:shop_sign2 refund short 1 run scoreboard players get @s snt_shop_test3_refund_check
execute unless score @s snt_shop_test3_refund_check = @s snt_shop_pricing run data modify storage snt:shop_sign2 refund set string storage snt:shop_sign2 refund 0 -1
execute unless score @s snt_shop_test3_refund_check = @s snt_shop_pricing run function shop:buy2/shop_insufficient_funds with storage snt:shop_sign2

execute if score @s snt_shop_test2_check_funds matches 0 run return 0
execute unless score @s snt_shop_test3_refund_check = @s snt_shop_pricing run return 0

execute if score @s snt_shop_test2_check_funds matches 1 if score @s snt_shop_test3_refund_check = @s snt_shop_pricing store success score @s snt_shop_test9_nbt_check at @s run data modify storage snt:shop_sign2 nbt_data set from entity @n[tag=snt_sell_item2] item.tag
execute if score @s snt_shop_test2_check_funds matches 1 if score @s snt_shop_test3_refund_check = @s snt_shop_pricing at @s run data modify storage snt:shop_sign2 shop_owner set string block ~ ~ ~ front_text.messages[0] 85 -2
execute if score @s snt_shop_test2_check_funds matches 1 if score @s snt_shop_test3_refund_check = @s snt_shop_pricing at @s run function shop:buy2/shop_buy_single_container1 with storage snt:shop_sign2
scoreboard players reset @s snt_shop_test2_check_funds
scoreboard players reset @s snt_shop_test3_refund_check
