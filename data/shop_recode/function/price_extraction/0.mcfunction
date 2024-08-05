$say $(price_snipper)
scoreboard players add @s snt_price_snipper 1
execute store result storage snt:shop_handling price_snipper int 1 run scoreboard players get @s snt_price_snipper
$data modify storage snt:shop_handling price set string block -1 -60 10 front_text.messages[3] 1 $(price_snipper)
execute if function shop_recode:price_extraction/1 run return run function shop_recode:price_extraction/0 with storage snt:shop_handling
# unless statement doesn't work

# if the number test failed: continue with the current scoreboard
scoreboard players reset @s snt_price_snipper
data modify storage snt:shop_handling price set string storage snt:shop_handling price 0 -1
execute if data storage snt:shop_handling {price:""} run data modify storage snt:shop_handling price set value "0"
data modify entity @s data.shop_data.price set from storage snt:shop_handling price
data remove storage snt:shop_handling price_snipper
data remove storage snt:shop_handling price
function shop_recode:potential_new_shop2 with entity @s data.shop_data
