# now executing as the shop sign and at the shop container

# payment
$execute store success score @s snt_shop_test2_check_funds store result score @s snt_shop_test3_refund_check run clear @p diamond $(pricing)
$scoreboard players set @s snt_shop_pricing $(pricing)

# remove items from the shop
# see later function


# funds check
execute unless score @s snt_shop_test3_refund_check = @s snt_shop_pricing run tellraw @p {"text": "insufficient funds","color": "red"}
execute unless score @s snt_shop_test3_refund_check = @s snt_shop_pricing store result entity @s data.shop_data.refund int 1 run scoreboard players get @s snt_shop_test3_refund_check
execute unless score @s snt_shop_test3_refund_check = @s snt_shop_pricing run return run function shop_recode:buy2/shop_insufficient_funds with entity @s data.shop_data
execute if score @s snt_shop_test2_check_funds matches 0 run return run function shop_recode:buy2/just_reseting_some_scoreboards

execute if score @s snt_shop_test2_check_funds matches 1 if score @s snt_shop_test3_refund_check = @s snt_shop_pricing at @s run data modify entity @s data.shop_data.nbt_data set from entity @s item.components
execute if score @s snt_shop_test2_check_funds matches 1 if score @s snt_shop_test3_refund_check = @s snt_shop_pricing at @s run function shop_recode:buy2/shop_buy5 with entity @s data.shop_data
function shop_recode:buy2/just_reseting_some_scoreboards
