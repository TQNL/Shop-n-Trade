# executing as the potential shop, in the shop sign - markers and this function are set in the block center of the shop sign (xyz)
## this function is used for new shops and changing existing shops
## extract information in the form of unquoted strings (+ intigers as strings)

# shop owner
execute if entity @s[tag=snt_potential_shop] run data modify entity @s data.shop_data.shop_owner set string block ~ ~ ~ front_text.messages[0] 1 -1
execute if entity @s[tag=snt_shop_sign] run data modify entity @s data.shop_data.shop_owner set string block ~ ~ ~ front_text.messages[0] 86 -2

# amount (is validated in next function)
data modify entity @s data.shop_data.amount set string block ~ ~ ~ front_text.messages[1] 1 -1

# item
data modify entity @s data.shop_data.item_sign set string block ~ ~ ~ front_text.messages[2] 1 -1
data modify storage snt:shop_handling item_validation set string block ~ ~ ~ front_text.messages[2] 1 -1
execute store success score @s snt_faulty_item run data modify storage snt:shop_handling item_validation set string block ^ ^ ^1 Items[0].id 10
data remove storage snt:shop_handling item_validation

execute if score @s snt_faulty_item matches 1 run tellraw @p {"text":"shop sign item is not valid","color":"dark_red"}
execute if score @s snt_faulty_item matches 1 run function shop:buy2/failed_shop with entity @s data.shop_data
execute if score @s snt_faulty_item matches 1 run return run scoreboard players reset @s

# pricing (is validated in next function)
scoreboard players set @s snt_price_snipper 2
function shop:price_extraction/0 {price_snipper:2}
