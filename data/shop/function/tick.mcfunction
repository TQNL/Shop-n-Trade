# shop change detection - new plan + clear all data
##execute as @e[tag=snt_shop_sign] at @s if data block ~ ~ ~ Items[0].tag run function shop:shop_change_tag with block ~ ~ ~ Items[0]

# reset movement detection scores of the player has moved
execute as @a[tag=snt_buying_nbt_item] if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"movement":{"speed":{"min":0.1}}}} run tag @s remove snt_buying_nbt_item

# reset shop detection
execute as @a[advancements={shop:enter_sign=true}] at @s unless block ~ ~ ~ #wall_signs run advancement revoke @s only shop:enter_sign

# kill mistaken shops
execute as @e[tag=snt_potential_shop] at @s unless entity @p[distance=..5.5] run kill @s

# kill deleted shops (signs)
execute as @e[tag=snt_shop_sign] at @s unless block ~ ~ ~ #wall_signs run data remove block ^ ^ ^1 Lock
execute as @e[tag=snt_shop_sign] at @s unless block ~ ~ ~ #wall_signs run kill @s
execute as @e[tag=snt_potential_shop] at @s unless block ~ ~ ~ #wall_signs run kill @s

# tell shop owners about empty shops
execute as @a[scores={snt_shop_empty=1}] run function shop:buy2/shop_empty_shop with entity @s

# relock shops
execute as @e[tag=snt_shop_sign] at @s unless data block ^ ^ ^1 Lock run function shop:buy2/lock/relock_shop1 with entity @s data.shop_data

# trigger shop_help - instruction: update or retire if its simple enough
scoreboard players enable @a shop_help
execute as @a[scores={shop_help=1..}] at @s run tellraw @s {"text":"the pricing on the sign can be 0 or more diamonds\nthe spelling of diamonds on the sign doesn't matter, as long as the line starts with numbers\nwhat does matter is the spelling of the item for sale\nthe item for sale needs to be the item ID, found with f3+H (without 'minecraft:')\nthe range for the amount is items is 1 through 1728 (27 stacks)\nNBT data like shulker contents or enchantements is not supported (planned feature)\nthe spelling of your mc username on the sign has to be perfect\n layout on the sign:\nign\namount\nitem for sale\npricing in diamonds\nthe profits aren't found in the chest, but can be retreaved with /trigger collect_shop_profits\nthe shops can be make out of chest, barrels or shulker boxes\nclick on a shop sign to buy items\nthe shop owner gets a notification of their shop is out of stock\nthey will be the only player able to open the shop, by pressing the shop sign\nyou can make shops by toggling /trigger shop_mode\nor with trigger make_shop_here when standing in the shop sign\nplayers get put into adventure mode near shops to prevent griefing\nshop owners are in survival mode when their shop is unlocked\nwhen making a shop, look at the shop container/the sign!","color":"blue"}
scoreboard players reset @a[scores={shop_help=1..}] shop_help

# emergency trigger against anti griefing measure
scoreboard players enable @a trapped_in_shop
execute as @a[scores={trapped_in_shop=1..}] at @s run function shop:trapped_in_shop

# anti griefing - adventure is the best way probs
execute as @a[gamemode=survival,tag=!shop_owner_mode] at @s if entity @n[tag=snt_shop_sign,distance=..6] as @e[tag=snt_shop_sign] run gamemode adventure @p
execute as @a[gamemode=adventure] at @s unless entity @n[tag=snt_shop_sign,distance=..6] as @e[tag=snt_shop_sign] run gamemode survival @p
execute as @a[gamemode=adventure,tag=shop_owner_mode] at @s as @n[tag=snt_shop_sign] run gamemode survival @p
