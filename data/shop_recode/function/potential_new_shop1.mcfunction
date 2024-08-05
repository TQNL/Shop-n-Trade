# kill old shop
#execute positioned ^ ^ ^1 align xyz positioned ~0.5 ~ ~0.5 run kill @n[tag=snt_sell_item1,distance=..0.4]
#execute positioned ^ ^ ^1 align xyz positioned ~0.5 ~ ~0.5 run kill @n[tag=snt_sell_item2,distance=..0.4]
#execute positioned ^ ^ ^1 align xyz positioned ~0.5 ~ ~0.5 run kill @n[tag=snt_shop_container,distance=..0.4]
## these systems shouldn't be needed: we should store the item data and owner UUID in the marker, also ^ ^ ^1 without alligning is enough

# executing as the potential shop, in the shop sign
## this function is used for new shops and changing existing shops

# extract information in the form of unquoted strings (+ intigers as strings)

# shop owner
execute if entity @s[tag=snt_potential_shop] run data modify entity @s data.shop_data.shop_owner set string block ~ ~ ~ front_text.messages[0] 1 -1
execute if entity @s[tag=snt_shop_sign] run data modify entity @s data.shop_data.shop_owner set string block ~ ~ ~ front_text.messages[0] 85 -2

## amount (is validated in next function)
data modify entity @s data.shop_data.amount set string block ~ ~ ~ front_text.messages[1] 1 -1

## item
data modify entity @s data.shop_data.item_sign set string block ~ ~ ~ front_text.messages[2] 1 -1
execute store success score @s snt_faulty_item run data modify storage snt:shop_handling item_validation set string block ^ ^ ^1 Items[0].id 10

execute if score @s snt_faulty_item matches 1 run tellraw @p {"text":"shop sign item is not valid","color":"dark_red"}
execute if score @s snt_faulty_item matches 1 run function shop:buy2/failed_shop with storage snt:shop_sign2
execute if score @s snt_faulty_item matches 1 run return run scoreboard players reset @s

## pricing (is validated in next function)
data modify storage snt:shop_sign2 pricing_magnitude set string block ~ ~ ~ front_text.messages[3] 13 14
execute store success score @s snt_faulty_pricing run data modify storage snt:shop_sign2 pricing_magnitude set value ' '
execute if score @s snt_faulty_pricing matches 0 run data modify storage snt:shop_sign2 pricing set string block ~ ~ ~ front_text.messages[3] 9 13
execute if score @s snt_faulty_pricing matches 0 run return run function shop:potential_shop2_new with storage snt:shop_sign2

data modify storage snt:shop_sign2 pricing_magnitude set string block ~ ~ ~ front_text.messages[3] 12 13
execute store success score @s snt_faulty_pricing run data modify storage snt:shop_sign2 pricing_magnitude set value ' '
execute if score @s snt_faulty_pricing matches 0 run data modify storage snt:shop_sign2 pricing set string block ~ ~ ~ front_text.messages[3] 9 12
execute if score @s snt_faulty_pricing matches 0 run return run function shop:potential_shop2_new with storage snt:shop_sign2

data modify storage snt:shop_sign2 pricing_magnitude set string block ~ ~ ~ front_text.messages[3] 11 12
execute store success score @s snt_faulty_pricing run data modify storage snt:shop_sign2 pricing_magnitude set value ' '
execute if score @s snt_faulty_pricing matches 0 run data modify storage snt:shop_sign2 pricing set string block ~ ~ ~ front_text.messages[3] 9 11
execute if score @s snt_faulty_pricing matches 0 run return run function shop:potential_shop2_new with storage snt:shop_sign2

data modify storage snt:shop_sign2 pricing_magnitude set string block ~ ~ ~ front_text.messages[3] 10 11
execute store success score @s snt_faulty_pricing run data modify storage snt:shop_sign2 pricing_magnitude set value ' '
execute if score @s snt_faulty_pricing matches 0 run data modify storage snt:shop_sign2 pricing set string block ~ ~ ~ front_text.messages[3] 9 10
execute if score @s snt_faulty_pricing matches 0 run function shop:potential_shop2_new with storage snt:shop_sign2
