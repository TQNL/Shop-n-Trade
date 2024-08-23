# now executing as the shop owner of the empty shop with their nbt data

scoreboard players reset @s snt_shop_empty
$execute at @e[type=marker,tag=snt_shop_sign,nbt={data:{shop_data:{shop_owner_uuid:$(UUID)}}}] positioned ^ ^ ^1 unless data block ~ ~ ~ Items[0] run function shop:buy2/shop_empty_shop2
