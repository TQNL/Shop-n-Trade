scoreboard players reset @s snt_faulty_pricing
scoreboard players reset @s snt_faulty_amount
scoreboard players reset @s snt_faulty_item

$execute store success score @s snt_faulty_pricing run scoreboard players set @s snt_shop_pricing $(pricing)
execute if score @s snt_faulty_pricing matches 0 run function shop:buy2/failed_shop with storage snt:shop_sign2
execute if score @s snt_faulty_pricing matches 0 run tellraw @p {"text":"shop sign pricing is not valid","color":"dark_red"}
execute if score @s snt_faulty_pricing matches 0 run scoreboard players reset @s
execute unless score @s snt_faulty_pricing matches ..0 unless score @s snt_faulty_pricing matches 0.. run return 0

$execute store success score @s snt_faulty_amount run scoreboard players set @s snt_shop_amount $(amount)
execute if score @s snt_faulty_amount matches 0 run function shop:buy2/failed_shop with storage snt:shop_sign2
execute if score @s snt_faulty_amount matches 0 run tellraw @p {"text":"shop sign amount is not valid","color":"dark_red"}
execute if score @s snt_faulty_amount matches 0 run scoreboard players reset @s
execute unless score @s snt_faulty_amount matches ..0 unless score @s snt_faulty_amount matches 0.. run return 0

#   succes check is useless, because the function macro just stops working

# now executing as and at snt_shop_sign

# establish sign of shop
data merge entity @s {Tags:["snt_shop_sign"],CustomName:'{"text":"shop sign"}'}

# establish shop
execute positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 run summon interaction ~ ~ ~ {width:0.1f,height:0.1f,attack:{player:[I;-1078970021,1004161751,-1242065986,2109482196],timestamp:3403283L},interaction:{player:[I;-1078970021,1004161751,-1242065986,2109482196],timestamp:3403288L},Tags:["snt_shop_container"],CustomName:'{"text":"shop container"}'}
#   ! @p might get a closer player, but other selection methods aren't really viable
execute positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 at @e[tag=snt_shop_container,sort=nearest,limit=1] run data modify entity @e[tag=snt_shop_container,sort=nearest,limit=1] Rotation[0] set from entity @s Rotation[0]
execute positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 at @e[tag=snt_shop_container,sort=nearest,limit=1] run data modify entity @e[tag=snt_shop_container,sort=nearest,limit=1] interaction.player set from entity @p UUID
execute positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 at @e[tag=snt_shop_container,sort=nearest,limit=1] run data modify entity @e[tag=snt_shop_container,sort=nearest,limit=1] attack.player set from entity @p UUID

# lock it for others
execute positioned ^ ^ ^1 run data modify block ~ ~ ~ Lock set string entity @s UUID[0]

tellraw @p {"text": "succesfully made the shop","color": "green"}

# store the item sold
execute at @s positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 run summon item_display ~ ~ ~ {Tags:["snt_sell_item1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.00390625f,0.00390625f,0.00390625f]},item:{id:"minecraft:blackstone",Count:1b}}
execute at @s positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 run summon item_display ~ ~ ~ {Tags:["snt_sell_item2"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.00390625f,0.00390625f,0.00390625f]},item:{id:"minecraft:blackstone",Count:1b}}
execute at @s positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 run execute as @e[type=item_display,sort=nearest,limit=2,distance=..0.4] run data modify entity @s item set from block ~ ~ ~ Items[0]

# clickable sign
data modify entity @s CustomName set string block ~ ~ ~ front_text.messages[0]
data modify storage snt:shop_sign sign set from block ~ ~ ~ front_text

data merge block ~ ~ ~ {front_text:{messages:['{"nbt":"shop_owner","storage":"snt:shop_sign2","clickEvent":{"action":"run_command","value":"function shop:buy2/shop_buy"}}','{"text":""}','{"text":""}','{"text":""}']}}
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
