# tell the shop owner about their empty shop, executing as and at the shop sign
$scoreboard players set $(shop_owner) snt_shop_empty 1

scoreboard players reset @s snt_shop_item_count
#execute as @a[scores={snt_shop_empty=1}] run function shop_recode:buy2/shop_empty_shop with entity @s
# happens in tick function

# refund
execute store result score @s snt_shop_test3_refund_check run scoreboard players get @s snt_shop_pricing
data modify entity @s data.shop_data.refund set from entity @s data.shop_data.pricing
function shop_recode:buy2/shop_insufficient_funds with entity @s data.shop_data
tellraw @p {"text": "this shop is out of stock","color": "red"}
