execute positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 run kill @e[tag=snt_shop_container,sort=nearest,limit=1,distance=..0.4]
execute positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 run kill @e[tag=snt_sell_item1,sort=nearest,limit=1,distance=..0.4]
execute positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 run kill @e[tag=snt_sell_item2,sort=nearest,limit=1,distance=..0.4]
execute positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 run data remove block ~ ~ ~ Lock
data remove storage snt:shop_sign2 pricing
data remove storage snt:shop_sign2 amount
data remove storage snt:shop_sign2 item_sign
data remove storage snt:shop_sign2 profits
data remove storage snt:shop_sign2 pricing_magnitude
data remove storage snt:shop_sign2 refund
data remove storage snt:shop_sign2 nbt_data

# get sign back
$execute if entity @s[tag=snt_shop_sign] run data modify block ~ ~ ~ front_text.messages[0] set value '{"text":"$(shop_owner)"}'
$execute if entity @s[tag=snt_shop_sign] run tellraw $(shop_owner) {"text":"This shop of yours was removed because of a change in items. The sign is now editable.","color":"red"}
$execute if entity @s[tag=snt_shop_sign] run tag $(shop_owner) remove shop_owner_mode
data remove storage snt:shop_sign2 shop_owner
data merge entity @s {Tags:["snt_potential_shop"]}