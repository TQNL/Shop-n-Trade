scoreboard players reset @s snt_faulty_pricing
scoreboard players reset @s snt_faulty_amount
scoreboard players reset @s snt_faulty_item

# now executing as and at snt_shop_sign

# establish sign of shop
data merge entity @s {Tags:["snt_shop_sign"],CustomName:'{"text":"shop sign"}'}

# establish shop - shop owner is online or saved
$data modify entity @s data.shop_data.shop_owner_uuid set from entity $(shop_owner) UUID
## if shop owner isn't here, UUID must already be saved
## intruction: do we need a backup of the UUID?

# lock it for others
execute positioned ^ ^ ^1 run data modify block ~ ~ ~ Lock set string entity @s UUID[0]

tellraw @p {"text": "succesfully made the shop","color": "green"}

# store the item sold
data modify entity @s data.shop_data.item set from block ^ ^ ^1 Items[0]

# clickable sign
tp @p @s
data modify block ~ ~ ~ front_text.messages[0] set value '{"nbt":"data.shop_data.shop_owner","entity":"@n[type=marker,tag=snt_shop_sign,distance=..1]","clickEvent":{"action":"run_command","value":"/function shop_recode:buy2/shop_buy"}}'

# shop owner will be gotten from the sign
# scoreboard snt_shop_amount has the amount (of snt_shop_sign entity)
# the item is contained in the shop
# scoreboard snt_shop_pricing has the amount (of snt_shop_sign entity) - in the recode snt_faulty_pricing briefly has the price in the 2 function
# intruction: are these notes invalid?

## example:
# ThijquintNL
# 64
# emeralds
# 2 Diamonds
