# now executing as the shop sign and at the shop container

# payment
$execute store success score @s snt_shop_test2_check_funds store result score @s snt_shop_test3_refund_check run clear @p diamond $(pricing)


# remove items from the shop
# see later function


# funds check
execute unless score @s snt_shop_test3_refund_check = @s snt_shop_pricing run tellraw @p {"text": "insufficient funds","color": "red"}
execute unless score @s snt_shop_test3_refund_check = @s snt_shop_pricing store result storage snt:shop_sign2 refund int 1 run scoreboard players get @s snt_shop_test3_refund_check
execute unless score @s snt_shop_test3_refund_check = @s snt_shop_pricing run return run function shop:buy2/shop_insufficient_funds with storage snt:shop_sign2
execute if score @s snt_shop_test2_check_funds matches 0 run return run function shop:buy2/just_reseting_some_scoreboards

execute if score @s snt_shop_test2_check_funds matches 1 if score @s snt_shop_test3_refund_check = @s snt_shop_pricing at @s run data modify storage snt:shop_sign2 nbt_data set from entity @n[tag=snt_sell_item2] item.components
execute if score @s snt_shop_test2_check_funds matches 1 if score @s snt_shop_test3_refund_check = @s snt_shop_pricing at @s run data modify storage snt:shop_sign2 shop_owner set string block ~ ~ ~ front_text.messages[0] 85 -2
execute if score @s snt_shop_test2_check_funds matches 1 if score @s snt_shop_test3_refund_check = @s snt_shop_pricing at @s run function shop:buy2/concat with storage snt:shop_sign2
function shop:buy2/just_reseting_some_scoreboards
