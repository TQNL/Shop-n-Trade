scoreboard players reset @s snt_faulty_pricing
scoreboard players reset @s snt_faulty_amount

# now executing as and at snt_shop_sign

# establish sign of shop
data merge entity @s {Tags:["snt_shop_sign"],CustomName:'{"text":"shop sign"}'}

# establish shop - shop owner is online or saved
$data modify entity @s data.shop_data.shop_owner_uuid set from entity $(shop_owner) UUID
$data modify entity @s data.shop_data.shop_owner_uuid_backup set from entity $(shop_owner) UUID
## if shop owner isn't here, UUID must already be saved

# lock it for others
execute positioned ^ ^ ^1 run data modify block ~ ~ ~ Lock set string entity @s UUID[0]

tellraw @p {"text": "succesfully made the shop","color": "green"}

# store the item sold - using my extract components library: https://github.com/TQNL/Extract-Components-Library
function sntlibrary:list1/init {source:'block',target:'^ ^ ^1',path:'Items[0]'}
data modify entity @s data.shop_data.item set from storage get_components:extract
data modify entity @s data.shop_data.item.sign_amount set from entity @s data.shop_data.amount

# clickable sign
data modify block ~ ~ ~ front_text.messages[0] set value '{"nbt":"data.shop_data.shop_owner","entity":"@n[type=marker,tag=snt_shop_sign,distance=..1]","clickEvent":{"action":"run_command","value":"/function shop:buy2/shop_buy"}}'

# shop owner will be gotten from the sign
# scoreboard snt_shop_amount has the amount (of snt_shop_sign entity) - has to remain
# the item is contained in the shop
# scoreboard snt_shop_pricing has the amount (of snt_shop_sign entity) - established in function shop:buy2/shop_buy4
# intruction: are these notes invalid?

## example:
# ThijquintNL
# 64
# emeralds
# 2 Diamonds
