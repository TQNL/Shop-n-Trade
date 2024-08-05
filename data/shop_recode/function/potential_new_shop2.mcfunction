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
execute positioned ^ ^ ^1 run summon item_display ~ ~ ~ {Tags:["snt_sell_item1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.00390625f,0.00390625f,0.00390625f]},item:{id:"minecraft:blackstone",Count:1b}}
execute positioned ^ ^ ^1 run summon item_display ~ ~ ~ {Tags:["snt_sell_item2"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.00390625f,0.00390625f,0.00390625f]},item:{id:"minecraft:blackstone",Count:1b}}
execute positioned ^ ^ ^1 as @e[type=item_display,sort=nearest,limit=2,distance=..0.4] run data modify entity @s item set from block ~ ~ ~ Items[0]

# clickable sign
data modify entity @s CustomName set string block ~ ~ ~ front_text.messages[0]
data modify storage snt:shop_sign sign set from block ~ ~ ~ front_text

data merge block ~ ~ ~ {front_text:{messages:['{"nbt":"shop_owner","storage":"snt:shop_sign2","clickEvent":{"action":"run_command","value":"/function shop:buy2/shop_buy"}}','{"text":""}','{"text":""}','{"text":""}']}}
data modify block ~ ~ ~ front_text.messages[1] set from storage snt:shop_sign sign.messages[1]
data modify block ~ ~ ~ front_text.messages[2] set from storage snt:shop_sign sign.messages[2]
data modify block ~ ~ ~ front_text.messages[3] set from storage snt:shop_sign sign.messages[3]
data modify storage snt:shop_sign sign set from block ~ ~ ~ front_text
data modify entity @s ArmorItems[0].tag.BlockEntityTag.front_text set from block ~ ~ ~ front_text

# free up storage
data remove storage snt:shop_sign2 pricing
data remove storage snt:shop_sign2 amount
data remove storage snt:shop_sign2 item_sign
data remove storage snt:shop_sign2 profits
data remove storage snt:shop_sign2 pricing_magnitude
data remove storage snt:shop_sign2 shop_owner
data remove storage snt:shop_sign2 refund
data remove storage snt:shop_sign2 nbt_data


# shop owner will be got from the sign
# scoreboard snt_shop_amount has the amount (of snt_shop_sign entity)
# the item is contained in the shop
# scoreboard snt_shop_pricing has the amount (of snt_shop_sign entity)

# example:
# ThijquintNL
# 64
# Emeralds
# 2 Diamonds
