# now executing as the shop sign and at @s

# check for valid items (anti scam and dupe protection)
$execute positioned ^ ^ ^1 unless items block ~ ~ ~ container.0 $(item_id)[$(components_command)] run item replace block ~ ~ ~ container.0 with air
$execute positioned ^ ^ ^1 unless items block ~ ~ ~ container.1 $(item_id)[$(components_command)] run item replace block ~ ~ ~ container.1 with air
$execute positioned ^ ^ ^1 unless items block ~ ~ ~ container.2 $(item_id)[$(components_command)] run item replace block ~ ~ ~ container.2 with air
$execute positioned ^ ^ ^1 unless items block ~ ~ ~ container.3 $(item_id)[$(components_command)] run item replace block ~ ~ ~ container.3 with air
$execute positioned ^ ^ ^1 unless items block ~ ~ ~ container.4 $(item_id)[$(components_command)] run item replace block ~ ~ ~ container.4 with air
$execute positioned ^ ^ ^1 unless items block ~ ~ ~ container.5 $(item_id)[$(components_command)] run item replace block ~ ~ ~ container.5 with air
$execute positioned ^ ^ ^1 unless items block ~ ~ ~ container.6 $(item_id)[$(components_command)] run item replace block ~ ~ ~ container.6 with air
$execute positioned ^ ^ ^1 unless items block ~ ~ ~ container.7 $(item_id)[$(components_command)] run item replace block ~ ~ ~ container.7 with air
$execute positioned ^ ^ ^1 unless items block ~ ~ ~ container.8 $(item_id)[$(components_command)] run item replace block ~ ~ ~ container.8 with air
$execute positioned ^ ^ ^1 unless items block ~ ~ ~ container.9 $(item_id)[$(components_command)] run item replace block ~ ~ ~ container.9 with air
$execute positioned ^ ^ ^1 unless items block ~ ~ ~ container.10 $(item_id)[$(components_command)] run item replace block ~ ~ ~ container.10 with air
$execute positioned ^ ^ ^1 unless items block ~ ~ ~ container.11 $(item_id)[$(components_command)] run item replace block ~ ~ ~ container.11 with air
$execute positioned ^ ^ ^1 unless items block ~ ~ ~ container.12 $(item_id)[$(components_command)] run item replace block ~ ~ ~ container.12 with air
$execute positioned ^ ^ ^1 unless items block ~ ~ ~ container.13 $(item_id)[$(components_command)] run item replace block ~ ~ ~ container.13 with air
$execute positioned ^ ^ ^1 unless items block ~ ~ ~ container.14 $(item_id)[$(components_command)] run item replace block ~ ~ ~ container.14 with air
$execute positioned ^ ^ ^1 unless items block ~ ~ ~ container.15 $(item_id)[$(components_command)] run item replace block ~ ~ ~ container.15 with air
$execute positioned ^ ^ ^1 unless items block ~ ~ ~ container.16 $(item_id)[$(components_command)] run item replace block ~ ~ ~ container.16 with air
$execute positioned ^ ^ ^1 unless items block ~ ~ ~ container.17 $(item_id)[$(components_command)] run item replace block ~ ~ ~ container.17 with air
$execute positioned ^ ^ ^1 unless items block ~ ~ ~ container.18 $(item_id)[$(components_command)] run item replace block ~ ~ ~ container.18 with air
$execute positioned ^ ^ ^1 unless items block ~ ~ ~ container.19 $(item_id)[$(components_command)] run item replace block ~ ~ ~ container.19 with air
$execute positioned ^ ^ ^1 unless items block ~ ~ ~ container.20 $(item_id)[$(components_command)] run item replace block ~ ~ ~ container.20 with air
$execute positioned ^ ^ ^1 unless items block ~ ~ ~ container.21 $(item_id)[$(components_command)] run item replace block ~ ~ ~ container.21 with air
$execute positioned ^ ^ ^1 unless items block ~ ~ ~ container.22 $(item_id)[$(components_command)] run item replace block ~ ~ ~ container.22 with air
$execute positioned ^ ^ ^1 unless items block ~ ~ ~ container.23 $(item_id)[$(components_command)] run item replace block ~ ~ ~ container.23 with air
$execute positioned ^ ^ ^1 unless items block ~ ~ ~ container.24 $(item_id)[$(components_command)] run item replace block ~ ~ ~ container.24 with air
$execute positioned ^ ^ ^1 unless items block ~ ~ ~ container.25 $(item_id)[$(components_command)] run item replace block ~ ~ ~ container.25 with air
$execute positioned ^ ^ ^1 unless items block ~ ~ ~ container.26 $(item_id)[$(components_command)] run item replace block ~ ~ ~ container.26 with air

# remove items from the shop
# 1. count the stock
scoreboard players reset @s snt_shop_item_count2
scoreboard players reset @s snt_shop_item_count
scoreboard players reset @s snt_itemcount0
scoreboard players reset @s snt_itemcount1
execute store result score @s snt_shop_item_count run data get block ^ ^ ^1 Items[0].count
scoreboard players operation @s snt_shop_item_count2 += @s snt_shop_item_count
execute store result score @s snt_shop_item_count run data get block ^ ^ ^1 Items[1].count
scoreboard players operation @s snt_shop_item_count2 += @s snt_shop_item_count
execute store result score @s snt_shop_item_count run data get block ^ ^ ^1 Items[2].count
scoreboard players operation @s snt_shop_item_count2 += @s snt_shop_item_count
execute store result score @s snt_shop_item_count run data get block ^ ^ ^1 Items[3].count
scoreboard players operation @s snt_shop_item_count2 += @s snt_shop_item_count
execute store result score @s snt_shop_item_count run data get block ^ ^ ^1 Items[4].count
scoreboard players operation @s snt_shop_item_count2 += @s snt_shop_item_count
execute store result score @s snt_shop_item_count run data get block ^ ^ ^1 Items[5].count
scoreboard players operation @s snt_shop_item_count2 += @s snt_shop_item_count
execute store result score @s snt_shop_item_count run data get block ^ ^ ^1 Items[6].count
scoreboard players operation @s snt_shop_item_count2 += @s snt_shop_item_count
execute store result score @s snt_shop_item_count run data get block ^ ^ ^1 Items[7].count
scoreboard players operation @s snt_shop_item_count2 += @s snt_shop_item_count
execute store result score @s snt_shop_item_count run data get block ^ ^ ^1 Items[8].count
scoreboard players operation @s snt_shop_item_count2 += @s snt_shop_item_count
execute store result score @s snt_shop_item_count run data get block ^ ^ ^1 Items[9].count
scoreboard players operation @s snt_shop_item_count2 += @s snt_shop_item_count
execute store result score @s snt_shop_item_count run data get block ^ ^ ^1 Items[10].count
scoreboard players operation @s snt_shop_item_count2 += @s snt_shop_item_count
execute store result score @s snt_shop_item_count run data get block ^ ^ ^1 Items[11].count
scoreboard players operation @s snt_shop_item_count2 += @s snt_shop_item_count
execute store result score @s snt_shop_item_count run data get block ^ ^ ^1 Items[12].count
scoreboard players operation @s snt_shop_item_count2 += @s snt_shop_item_count
execute store result score @s snt_shop_item_count run data get block ^ ^ ^1 Items[13].count
scoreboard players operation @s snt_shop_item_count2 += @s snt_shop_item_count
execute store result score @s snt_shop_item_count run data get block ^ ^ ^1 Items[14].count
scoreboard players operation @s snt_shop_item_count2 += @s snt_shop_item_count
execute store result score @s snt_shop_item_count run data get block ^ ^ ^1 Items[15].count
scoreboard players operation @s snt_shop_item_count2 += @s snt_shop_item_count
execute store result score @s snt_shop_item_count run data get block ^ ^ ^1 Items[16].count
scoreboard players operation @s snt_shop_item_count2 += @s snt_shop_item_count
execute store result score @s snt_shop_item_count run data get block ^ ^ ^1 Items[17].count
scoreboard players operation @s snt_shop_item_count2 += @s snt_shop_item_count
execute store result score @s snt_shop_item_count run data get block ^ ^ ^1 Items[18].count
scoreboard players operation @s snt_shop_item_count2 += @s snt_shop_item_count
execute store result score @s snt_shop_item_count run data get block ^ ^ ^1 Items[19].count
scoreboard players operation @s snt_shop_item_count2 += @s snt_shop_item_count
execute store result score @s snt_shop_item_count run data get block ^ ^ ^1 Items[20].count
scoreboard players operation @s snt_shop_item_count2 += @s snt_shop_item_count
execute store result score @s snt_shop_item_count run data get block ^ ^ ^1 Items[21].count
scoreboard players operation @s snt_shop_item_count2 += @s snt_shop_item_count
execute store result score @s snt_shop_item_count run data get block ^ ^ ^1 Items[22].count
scoreboard players operation @s snt_shop_item_count2 += @s snt_shop_item_count
execute store result score @s snt_shop_item_count run data get block ^ ^ ^1 Items[23].count
scoreboard players operation @s snt_shop_item_count2 += @s snt_shop_item_count
execute store result score @s snt_shop_item_count run data get block ^ ^ ^1 Items[24].count
scoreboard players operation @s snt_shop_item_count2 += @s snt_shop_item_count
execute store result score @s snt_shop_item_count run data get block ^ ^ ^1 Items[25].count
scoreboard players operation @s snt_shop_item_count2 += @s snt_shop_item_count
execute store result score @s snt_shop_item_count run data get block ^ ^ ^1 Items[26].count
scoreboard players operation @s snt_shop_item_count2 += @s snt_shop_item_count

# 2. check of there is enough stock
scoreboard players operation @s snt_shop_item_count2 -= @s snt_shop_amount
execute if score @s snt_shop_item_count2 matches ..-1 run return run function shop:buy2/shop_empty with entity @s data.shop_data

# 3. remove the appropriate amount of items
execute store result score @s snt_shop_item_count_stacks run scoreboard players get @s snt_shop_amount
execute store result score @s snt_shop_item_count_remainder run scoreboard players get @s snt_shop_amount

## determine max. stack size
execute store result score @s snt_itemcount0 run data get block ^ ^ ^1 Items[0].count
execute store result score @s snt_itemcount1 run data get block ^ ^ ^1 Items[1].count
execute if score @s snt_itemcount0 >= @s snt_itemcount1 store result score @s snt_stack run scoreboard players get @s snt_itemcount0
execute if score @s snt_itemcount0 < @s snt_itemcount1 store result score @s snt_stack run scoreboard players get @s snt_itemcount1
execute if score @s snt_stack matches 2..16 run scoreboard players set @s snt_stack 16
execute if score @s snt_stack matches 17..64 run scoreboard players set @s snt_stack 64

scoreboard players operation @s snt_shop_item_count_stacks /= @s snt_stack
scoreboard players operation @s snt_shop_item_count_remainder %= @s snt_stack
execute store result score @s snt_stack run data get block ^ ^ ^1 Items[0].count
scoreboard players operation @s snt_stack -= @s snt_shop_item_count_remainder

execute unless score @s snt_shop_item_count_stacks matches 0 run data remove block ^ ^ ^1 Items[0]
execute unless score @s snt_shop_item_count_stacks matches 0 run scoreboard players remove @s snt_shop_item_count_stacks 1
execute unless score @s snt_shop_item_count_stacks matches 0 run data remove block ^ ^ ^1 Items[0]
execute unless score @s snt_shop_item_count_stacks matches 0 run scoreboard players remove @s snt_shop_item_count_stacks 1
execute unless score @s snt_shop_item_count_stacks matches 0 run data remove block ^ ^ ^1 Items[0]
execute unless score @s snt_shop_item_count_stacks matches 0 run scoreboard players remove @s snt_shop_item_count_stacks 1
execute unless score @s snt_shop_item_count_stacks matches 0 run data remove block ^ ^ ^1 Items[0]
execute unless score @s snt_shop_item_count_stacks matches 0 run scoreboard players remove @s snt_shop_item_count_stacks 1
execute unless score @s snt_shop_item_count_stacks matches 0 run data remove block ^ ^ ^1 Items[0]
execute unless score @s snt_shop_item_count_stacks matches 0 run scoreboard players remove @s snt_shop_item_count_stacks 1
execute unless score @s snt_shop_item_count_stacks matches 0 run data remove block ^ ^ ^1 Items[0]
execute unless score @s snt_shop_item_count_stacks matches 0 run scoreboard players remove @s snt_shop_item_count_stacks 1
execute unless score @s snt_shop_item_count_stacks matches 0 run data remove block ^ ^ ^1 Items[0]
execute unless score @s snt_shop_item_count_stacks matches 0 run scoreboard players remove @s snt_shop_item_count_stacks 1
execute unless score @s snt_shop_item_count_stacks matches 0 run data remove block ^ ^ ^1 Items[0]
execute unless score @s snt_shop_item_count_stacks matches 0 run scoreboard players remove @s snt_shop_item_count_stacks 1
execute unless score @s snt_shop_item_count_stacks matches 0 run data remove block ^ ^ ^1 Items[0]
execute unless score @s snt_shop_item_count_stacks matches 0 run scoreboard players remove @s snt_shop_item_count_stacks 1
execute unless score @s snt_shop_item_count_stacks matches 0 run data remove block ^ ^ ^1 Items[0]
execute unless score @s snt_shop_item_count_stacks matches 0 run scoreboard players remove @s snt_shop_item_count_stacks 1
execute unless score @s snt_shop_item_count_stacks matches 0 run data remove block ^ ^ ^1 Items[0]
execute unless score @s snt_shop_item_count_stacks matches 0 run scoreboard players remove @s snt_shop_item_count_stacks 1
execute unless score @s snt_shop_item_count_stacks matches 0 run data remove block ^ ^ ^1 Items[0]
execute unless score @s snt_shop_item_count_stacks matches 0 run scoreboard players remove @s snt_shop_item_count_stacks 1
execute unless score @s snt_shop_item_count_stacks matches 0 run data remove block ^ ^ ^1 Items[0]
execute unless score @s snt_shop_item_count_stacks matches 0 run scoreboard players remove @s snt_shop_item_count_stacks 1
execute unless score @s snt_shop_item_count_stacks matches 0 run data remove block ^ ^ ^1 Items[0]
execute unless score @s snt_shop_item_count_stacks matches 0 run scoreboard players remove @s snt_shop_item_count_stacks 1
execute unless score @s snt_shop_item_count_stacks matches 0 run data remove block ^ ^ ^1 Items[0]
execute unless score @s snt_shop_item_count_stacks matches 0 run scoreboard players remove @s snt_shop_item_count_stacks 1
execute unless score @s snt_shop_item_count_stacks matches 0 run data remove block ^ ^ ^1 Items[0]
execute unless score @s snt_shop_item_count_stacks matches 0 run scoreboard players remove @s snt_shop_item_count_stacks 1
execute unless score @s snt_shop_item_count_stacks matches 0 run data remove block ^ ^ ^1 Items[0]
execute unless score @s snt_shop_item_count_stacks matches 0 run scoreboard players remove @s snt_shop_item_count_stacks 1
execute unless score @s snt_shop_item_count_stacks matches 0 run data remove block ^ ^ ^1 Items[0]
execute unless score @s snt_shop_item_count_stacks matches 0 run scoreboard players remove @s snt_shop_item_count_stacks 1
execute unless score @s snt_shop_item_count_stacks matches 0 run data remove block ^ ^ ^1 Items[0]
execute unless score @s snt_shop_item_count_stacks matches 0 run scoreboard players remove @s snt_shop_item_count_stacks 1
execute unless score @s snt_shop_item_count_stacks matches 0 run data remove block ^ ^ ^1 Items[0]
execute unless score @s snt_shop_item_count_stacks matches 0 run scoreboard players remove @s snt_shop_item_count_stacks 1
execute unless score @s snt_shop_item_count_stacks matches 0 run data remove block ^ ^ ^1 Items[0]
execute unless score @s snt_shop_item_count_stacks matches 0 run scoreboard players remove @s snt_shop_item_count_stacks 1
execute unless score @s snt_shop_item_count_stacks matches 0 run data remove block ^ ^ ^1 Items[0]
execute unless score @s snt_shop_item_count_stacks matches 0 run scoreboard players remove @s snt_shop_item_count_stacks 1
execute unless score @s snt_shop_item_count_stacks matches 0 run data remove block ^ ^ ^1 Items[0]
execute unless score @s snt_shop_item_count_stacks matches 0 run scoreboard players remove @s snt_shop_item_count_stacks 1
execute unless score @s snt_shop_item_count_stacks matches 0 run data remove block ^ ^ ^1 Items[0]
execute unless score @s snt_shop_item_count_stacks matches 0 run scoreboard players remove @s snt_shop_item_count_stacks 1
execute unless score @s snt_shop_item_count_stacks matches 0 run data remove block ^ ^ ^1 Items[0]
execute unless score @s snt_shop_item_count_stacks matches 0 run scoreboard players remove @s snt_shop_item_count_stacks 1
execute unless score @s snt_shop_item_count_stacks matches 0 run data remove block ^ ^ ^1 Items[0]
execute unless score @s snt_shop_item_count_stacks matches 0 run scoreboard players remove @s snt_shop_item_count_stacks 1
execute unless score @s snt_shop_item_count_stacks matches 0 run data remove block ^ ^ ^1 Items[0]
execute unless score @s snt_shop_item_count_stacks matches 0 run scoreboard players remove @s snt_shop_item_count_stacks 1

execute unless score @s snt_stack matches ..-1 store result block ^ ^ ^1 Items[0].count byte 1 run scoreboard players get @s snt_stack
execute if score @s snt_stack matches ..-1 store result score @s snt_shop_item_count_stacks run data get block ^ ^ ^1 Items[1].count
execute if score @s snt_stack matches ..-1 run scoreboard players operation @s snt_shop_item_count_stacks += @s snt_stack
execute if score @s snt_stack matches ..-1 store result block ^ ^ ^1 Items[1].count byte 1 run scoreboard players get @s snt_shop_item_count_stacks
execute if score @s snt_stack matches ..-1 run data remove block ^ ^ ^1 Items[0]

scoreboard players reset @s snt_shop_item_count_stacks
scoreboard players reset @s snt_shop_item_count_remainder
scoreboard players reset @s snt_stack

## give items to the player
$give @p $(item_id)[$(components_command)] $(item_count)
function shop:buy2/shop_buy_final with entity @s data.shop_data
