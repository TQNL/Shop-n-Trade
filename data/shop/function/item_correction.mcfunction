data modify entity @s data.shop_data.item_sign set string block ~ ~ ~ front_text.messages[2] 1 -1
data modify entity @s data.shop_data.item_sign set string entity @s data.shop_data.item_sign 10
data modify block ~ ~ ~ front_text.messages[2] set value '{"nbt":"data.shop_data.item_sign","entity":"@n[type=marker]"}'
