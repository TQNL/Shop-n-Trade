# now executing as the shop owner of the empty shop with their nbt data

scoreboard players reset @s snt_shop_empty
$execute at @e[tag=snt_shop_sign,nbt={data:{shop_owner_uuid:{shop_data:$(UUID)}}}] unless data block ~ ~ ~ Items[0] run function shop_recode:buy2/shop_empty_shop2
