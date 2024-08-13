scoreboard players add @s snt_price_snipper 1
execute store result storage snt:shop_handling price_snipper int 1 run scoreboard players get @s snt_price_snipper
$data modify storage snt:shop_handling price set string block ~ ~ ~ front_text.messages[3] 1 $(price_snipper)
execute if function shop:price_extraction/1 run return run function shop:price_extraction/0 with storage snt:shop_handling
#unless statement doesn't work

# if the number test failed: continue with the current scoreboard
scoreboard players reset @s snt_price_snipper
data modify storage snt:shop_handling price set string storage snt:shop_handling price 0 -1
execute if data storage snt:shop_handling {price:""} run data modify storage snt:shop_handling price set value "0"
data modify entity @s data.shop_data.pricing set from storage snt:shop_handling price
data remove storage snt:shop_handling price_snipper
data remove storage snt:shop_handling price

## amount validation
execute store success score @s snt_faulty_amount run function shop:amount_validation with entity @s data.shop_data
execute if score @s snt_faulty_amount matches 0 run function shop:buy2/failed_shop with storage snt:shop_sign2
execute if score @s snt_faulty_amount matches 0 run tellraw @p {"text":"shop sign amount is not valid","color":"dark_red"}
execute if score @s snt_faulty_amount matches 0 run return run scoreboard players reset @s

## continue
function shop:potential_new_shop2 with entity @s data.shop_data
