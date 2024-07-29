# shop change detection
execute as @e[tag=snt_shop_container] at @s if data block ~ ~ ~ Items[0].tag run function shop:shop_change_tag with block ~ ~ ~ Items[0]
execute as @e[tag=snt_shop_container] at @s unless data block ~ ~ ~ Items[0].tag run function shop:shop_change_tag with block ~ ~ ~ Items[0]

# reset movement detection scores of the player has moved
execute unless score @s shop_dp_isWalking matches 0 run function shop:reset_movement_scores
execute unless score @s shop_dp_isSprinting matches 0 run function shop:reset_movement_scores
execute unless score @s shop_dp_isCrouching matches 0 run function shop:reset_movement_scores


# new shop detection
execute as @a[scores={snt_shop_making=1}] at @s anchored eyes positioned ^ ^ ^ anchored feet run function shop:shop_make_ray_cast

# kill mistaken shops
execute as @e[tag=snt_potential_shop] at @s unless entity @p[distance=..5.5] run kill @s

# kill deleted shops (signs)
execute as @e[tag=snt_sell_item1] at @s unless block ~1 ~ ~ #wall_signs unless block ~-1 ~ ~ #wall_signs unless block ~ ~ ~1 #wall_signs unless block ~ ~ ~-1 #wall_signs run kill @s
execute as @e[tag=snt_sell_item2] at @s unless block ~1 ~ ~ #wall_signs unless block ~-1 ~ ~ #wall_signs unless block ~ ~ ~1 #wall_signs unless block ~ ~ ~-1 #wall_signs run kill @s
execute as @n[tag=snt_shop_sign] at @s unless block ~ ~ ~ #wall_signs positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 run kill @e[tag=snt_sell_item1,distance=..0.4]
execute as @n[tag=snt_shop_sign] at @s unless block ~ ~ ~ #wall_signs positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 run kill @e[tag=snt_sell_item2,distance=..0.4]
execute as @e[tag=snt_shop_sign] at @s unless block ~ ~ ~ #wall_signs run kill @s
#execute as @e[tag=snt_failed_shop] at @s unless block ~ ~ ~ #wall_signs run kill @s
execute as @e[tag=snt_potential_shop] at @s unless block ~ ~ ~ #wall_signs run kill @s
execute as @e[tag=snt_shop_container] at @s positioned ^ ^ ^-1 unless block ~ ~ ~ #wall_signs at @s run data remove block ~ ~ ~ Lock
execute as @e[tag=snt_shop_container] at @s positioned ^ ^ ^-1 unless block ~ ~ ~ #wall_signs run kill @s

# tell shop owners about empty shops
execute as @a[scores={snt_shop_empty=1}] run function shop:buy2/shop_empty_shop with entity @s

# relock shops
execute as @e[tag=snt_shop_sign] at @s unless data block ^ ^ ^1 Lock run function shop:buy2/lock/relock_shop

# trigger shop_mode_on
scoreboard players enable @a shop_mode_on
execute as @a[scores={shop_mode_on=1..}] at @s run scoreboard players set @s snt_shop_making 1
scoreboard players reset @a[scores={shop_mode_on=1..}] shop_mode_on

# trigger shop_mode_off
scoreboard players enable @a shop_mode_off
execute as @a[scores={shop_mode_off=1..}] at @s run scoreboard players reset @s snt_shop_making
scoreboard players reset @a[scores={shop_mode_off=1..}] shop_mode_off

# trigger make_shop_here
scoreboard players enable @a make_shop_here
execute as @a[scores={make_shop_here=1..}] at @s if block ~ ~ ~ #wall_signs align xyz positioned ~0.5 ~ ~0.5 unless entity @e[tag=snt_shop_sign,distance=..0.4] run function shop:make_shop
scoreboard players reset @a[scores={make_shop_here=1..}] make_shop_here

# trigger shop_help
scoreboard players enable @a shop_help
execute as @a[scores={shop_help=1..}] at @s run tellraw @s {"text":"the pricing on the sign can be 1 through 9999 diamonds\nthe spelling of diamonds on the sign doesn't matter\nwhat does matter is the spelling of the item for sale\nthe item for sale needs to be the item ID, found with f3+H (without 'minecraft:')\nthe range for the amount is items is 1 through 1728 (27 stacks)\nNBT data like shulker contents or enchantements is not supported (planned feature)\nthe spelling of your mc username on the sign has to be perfect\n layout on the sign:\nign\namount\nitem for sale\npricing in diamonds\nthe profits aren't found in the chest, but can be retreaved with /trigger collect_shop_profits\nthe shops can be make out of chest, barrels or shulker boxes\nclick on a shop sign to buy items\nthe shop owner gets a notification of their shop is out of stock\nthey will be the only player able to open the shop, by pressing the shop sign\nyou can make shops by toggling /trigger shop_mode\nor with trigger make_shop_here when standing in the shop sign\nplayers get put into adventure mode near shops to prevent griefing\nshop owners are in survival mode when their shop is unlocked\nwhen making a shop, look at the shop container/the sign!","color":"blue"}
scoreboard players reset @a[scores={shop_help=1..}] shop_help

# trigger collect_shop_profits
scoreboard players enable @a collect_shop_profits
execute as @a[scores={collect_shop_profits=1..},limit=1] store result storage snt:shop_sign2 profits short 1 run scoreboard players get @s snt_profits
execute as @a[scores={collect_shop_profits=1..},limit=1] run data modify storage snt:shop_sign2 profits set string storage snt:shop_sign2 profits 0 -1
execute as @a[scores={collect_shop_profits=1..},limit=1] run function shop:collect_shop_profits with storage snt:shop_sign2
scoreboard players reset @a[scores={collect_shop_profits=1..}] collect_shop_profits

# emergency trigger against anti griefing measure
scoreboard players enable @a trapped_in_shop
execute as @a[scores={trapped_in_shop=1..}] at @s run function shop:trapped_in_shop

# anti griefing
execute as @a[gamemode=survival,tag=!shop_owner_mode] at @s if entity @n[tag=snt_shop_sign,distance=..6] as @e[tag=snt_shop_sign] run gamemode adventure @p
execute as @a[gamemode=adventure] at @s unless entity @n[tag=snt_shop_sign,distance=..6] as @e[tag=snt_shop_sign] run gamemode survival @p
execute as @a[gamemode=adventure,tag=shop_owner_mode] at @s as @n[tag=snt_shop_sign] run gamemode survival @p

