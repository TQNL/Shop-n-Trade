# reset movement detection scores of the player has moved
execute as @a[tag=snt_buying_nbt_item] if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"movement":{"speed":{"min":0.1}}}} run tag @s remove snt_buying_nbt_item

# reset shop detection
execute as @a[advancements={shop:enter_sign=true}] at @s unless block ~ ~ ~ #wall_signs run advancement revoke @s only shop:enter_sign

# kill mistaken shops
execute as @e[type=marker,tag=snt_potential_shop] at @s unless entity @p[distance=..5.5] run kill @s

# kill deleted shops (signs)
execute as @e[type=marker,tag=snt_shop_sign] at @s unless block ~ ~ ~ #wall_signs run data remove block ^ ^ ^1 Lock
execute as @e[type=marker,tag=snt_shop_sign] at @s unless block ~ ~ ~ #wall_signs run kill @s
execute as @e[type=marker,tag=snt_potential_shop] at @s unless block ~ ~ ~ #wall_signs run kill @s

# tell shop owners about empty shops
execute as @a[scores={snt_shop_empty=1}] if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"movement":{"speed":{"min":0.1}}}} run function shop:buy2/shop_empty_shop with entity @s

# relock shops
execute as @e[type=marker,tag=snt_shop_sign] at @s unless data block ^ ^ ^1 Lock run function shop:buy2/lock/relock_shop1 with entity @s data.shop_data

# trigger shop_help
scoreboard players enable @a shop_help
execute as @a[scores={shop_help=1..}] at @s run tellraw @s ["",{"text":"Shop 'n Trade Quick Guide to shops:","bold":true},{"text":"\n"},{"text":"To create a shop, place a sign on a chest, barrel, or shulker box.","color":"gray"},{"text":"\n\nSign format:\n1: "},{"text":"In-game username (must be exact).","color":"gray"},{"text":"\n2: "},{"text":"Amount (number of items sold per batch).","color":"gray"},{"text":"\n3: "},{"text":"Item (automatically detected based on container).","color":"gray"},{"text":"\n4: "},{"text":"Price (starts with a number; additional letters optional; 0 for free).","color":"gray"},{"text":"\n\n"},{"text":"When you walk into the sign, the system automatically detects and sets up the shop based on these details and the container's contents.","color":"gray"},{"text":"\n\n"},{"text":"Managing Your Shop:","bold":true},{"text":"\n- "},{"text":"click the shop sign to unlock the shop. You can now manage inventory or even destroy the shop. Changes to the container\u2019s items update the shop automatically.","color":"gray"},{"text":"\n- "},{"text":"click again to collect profits and waste items. Profits and any unsellable items are stored in the shop.","color":"gray"},{"text":"\n- "},{"text":"click a third time or move away to relock the shop.","color":"gray"},{"text":"\n\n"},{"text":"Shop Maintenance:","bold":true},{"text":"\n- Restocking: "},{"text":"While the shop is unlocked, add new items to the container. The shop updates automatically to reflect new stock.","color":"gray"},{"text":"\n- Empty Shop Alerts: "},{"text":"You'll be notified if your shop runs out of stock when you're online and not AFK.","color":"gray"},{"text":"\n\n"},{"text":"Security:","bold":true},{"text":"\n- "},{"text":"Players near your shop are placed in Adventure mode to prevent unwanted interactions. If trapped, use `/trigger trapped_in_shop` to escape.","color":"gray"},{"text":"\n\n"},{"text":"Buying Process:","bold":true},{"text":"\n- "},{"text":"Players right-click the shop sign to buy items. If items have NBT data, a confirmation message will provide details before completing the purchase.","color":"gray"},{"text":"\n"},{"text":"Scroll for full text or ","color":"dark_gray"},{"text":"browse the full wiki","underlined":true,"color":"dark_gray","clickEvent":{"action":"open_url","value":"https://github.com/TQNL/Shop-n-Trade/wiki/Shop-'n-Trade"}},{"text":".","color":"dark_gray"}]
scoreboard players reset @a[scores={shop_help=1..}] shop_help

# trigger view_shop_profit_scores_toggle
scoreboard players enable @a view_shop_profit_scores_toggle
execute as @a[scores={view_shop_profit_scores_toggle=1..}] run function shop:view_profits/yes
scoreboard players reset @a[scores={view_shop_profit_scores_toggle=1..}] view_shop_profit_scores_toggle

# emergency trigger against anti griefing measure
scoreboard players enable @a trapped_in_shop
execute as @a[scores={trapped_in_shop=1..}] at @s run function shop:trapped_in_shop

# anti griefing - adventure is the best way probs
execute as @a[tag=shop_owner_mode] at @s unless entity @n[tag=snt_shop_sign,distance=..6] run tag @s remove shop_owner_mode
execute as @a[gamemode=survival,tag=!shop_owner_mode] at @s if entity @n[tag=snt_shop_sign,distance=..6] run gamemode adventure @p
execute as @a[gamemode=adventure] at @s unless entity @n[tag=snt_shop_sign,distance=..6] run gamemode survival @p
execute as @a[gamemode=adventure,tag=shop_owner_mode] at @s as @n[type=marker,tag=snt_shop_sign] run gamemode survival @p
