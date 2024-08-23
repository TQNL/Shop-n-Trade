# executing as the potential shop, in the shop sign - markers and this function are set in the block center of the shop sign (xyz)
## this function is used for new shops and changing existing shops
## extract information in the form of unquoted strings (+ intigers as strings)

# shop owner
execute if entity @s[tag=snt_potential_shop] run data modify entity @s data.shop_data.shop_owner set string block ~ ~ ~ front_text.messages[0] 1 -1
execute if entity @s[tag=snt_shop_sign] run data modify entity @s data.shop_data.shop_owner set string block ~ ~ ~ front_text.messages[0] 86 -2

# amount (is validated in next function)
data modify entity @s data.shop_data.amount set string block ~ ~ ~ front_text.messages[1] 1 -1

# item
data modify entity @s data.shop_data.item_sign set from block ^ ^ ^1 Items[0].id
data modify block ~ ~ ~ front_text.messages[2] set value '{"nbt":"data.shop_data.item_sign","entity":"@n[type=marker]"}'
data modify entity @s data.shop_data.item_sign set string entity @s data.shop_data.item_sign 0 10
execute unless data entity @s {data:{shop_data:{item_sign:"minecraft:"}}} run data modify entity @s data.shop_data.item_sign set string block ~ ~ ~ front_text.messages[2] 1 -1
execute if data entity @s {data:{shop_data:{item_sign:"minecraft:"}}} run function shop:item_correction

# pricing (is validated in next function)
scoreboard players set @s snt_price_snipper 2
function shop:price_extraction/0 {price_snipper:2}
