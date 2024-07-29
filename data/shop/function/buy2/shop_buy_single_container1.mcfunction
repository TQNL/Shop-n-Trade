# check for valid items (anti scam and dupe protection)
execute positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify entity @n[tag=snt_sell_item1,distance=..0.4] item.tag set from block ~ ~ ~ Items[{Slot:0b}].tag
execute positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify entity @n[tag=snt_sell_item1,distance=..0.4] item.id set from block ~ ~ ~ Items[{Slot:0b}].id
execute positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 store success score @s snt_shop_test8_item_validation2 run data modify entity @n[tag=snt_sell_item1,distance=..0.4] item set from entity @n[tag=snt_sell_item2,distance=..0.4] item
execute if score @s snt_shop_test8_item_validation2 matches 1 run data modify block ^ ^ ^1 Items[{Slot:0b}].Count set value 0
scoreboard players reset @s snt_shop_test8_item_validation2
execute positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify entity @n[tag=snt_sell_item1,distance=..0.4] item.tag set from block ~ ~ ~ Items[{Slot:1b}].tag
execute positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify entity @n[tag=snt_sell_item1,distance=..0.4] item.id set from block ~ ~ ~ Items[{Slot:1b}].id
execute positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 store success score @s snt_shop_test8_item_validation2 run data modify entity @n[tag=snt_sell_item1,distance=..0.4] item set from entity @n[tag=snt_sell_item2,distance=..0.4] item
execute if score @s snt_shop_test8_item_validation2 matches 1 run data modify block ^ ^ ^1 Items[{Slot:1b}].Count set value 0
scoreboard players reset @s snt_shop_test8_item_validation2
execute positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify entity @n[tag=snt_sell_item1,distance=..0.4] item.tag set from block ~ ~ ~ Items[{Slot:2b}].tag
execute positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify entity @n[tag=snt_sell_item1,distance=..0.4] item.id set from block ~ ~ ~ Items[{Slot:2b}].id
execute positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 store success score @s snt_shop_test8_item_validation2 run data modify entity @n[tag=snt_sell_item1,distance=..0.4] item set from entity @n[tag=snt_sell_item2,distance=..0.4] item
execute if score @s snt_shop_test8_item_validation2 matches 1 run data modify block ^ ^ ^1 Items[{Slot:2b}].Count set value 0
scoreboard players reset @s snt_shop_test8_item_validation2
execute positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify entity @n[tag=snt_sell_item1,distance=..0.4] item.tag set from block ~ ~ ~ Items[{Slot:3b}].tag
execute positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify entity @n[tag=snt_sell_item1,distance=..0.4] item.id set from block ~ ~ ~ Items[{Slot:3b}].id
execute positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 store success score @s snt_shop_test8_item_validation2 run data modify entity @n[tag=snt_sell_item1,distance=..0.4] item set from entity @n[tag=snt_sell_item2,distance=..0.4] item
execute if score @s snt_shop_test8_item_validation2 matches 1 run data modify block ^ ^ ^1 Items[{Slot:3b}].Count set value 0
scoreboard players reset @s snt_shop_test8_item_validation2
execute positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify entity @n[tag=snt_sell_item1,distance=..0.4] item.tag set from block ~ ~ ~ Items[{Slot:4b}].tag
execute positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify entity @n[tag=snt_sell_item1,distance=..0.4] item.id set from block ~ ~ ~ Items[{Slot:4b}].id
execute positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 store success score @s snt_shop_test8_item_validation2 run data modify entity @n[tag=snt_sell_item1,distance=..0.4] item set from entity @n[tag=snt_sell_item2,distance=..0.4] item
execute if score @s snt_shop_test8_item_validation2 matches 1 run data modify block ^ ^ ^1 Items[{Slot:4b}].Count set value 0
scoreboard players reset @s snt_shop_test8_item_validation2
execute positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify entity @n[tag=snt_sell_item1,distance=..0.4] item.tag set from block ~ ~ ~ Items[{Slot:5b}].tag
execute positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify entity @n[tag=snt_sell_item1,distance=..0.4] item.id set from block ~ ~ ~ Items[{Slot:5b}].id
execute positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 store success score @s snt_shop_test8_item_validation2 run data modify entity @n[tag=snt_sell_item1,distance=..0.4] item set from entity @n[tag=snt_sell_item2,distance=..0.4] item
execute if score @s snt_shop_test8_item_validation2 matches 1 run data modify block ^ ^ ^1 Items[{Slot:5b}].Count set value 0
scoreboard players reset @s snt_shop_test8_item_validation2
execute positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify entity @n[tag=snt_sell_item1,distance=..0.4] item.tag set from block ~ ~ ~ Items[{Slot:6b}].tag
execute positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify entity @n[tag=snt_sell_item1,distance=..0.4] item.id set from block ~ ~ ~ Items[{Slot:6b}].id
execute positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 store success score @s snt_shop_test8_item_validation2 run data modify entity @n[tag=snt_sell_item1,distance=..0.4] item set from entity @n[tag=snt_sell_item2,distance=..0.4] item
execute if score @s snt_shop_test8_item_validation2 matches 1 run data modify block ^ ^ ^1 Items[{Slot:6b}].Count set value 0
scoreboard players reset @s snt_shop_test8_item_validation2
execute positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify entity @n[tag=snt_sell_item1,distance=..0.4] item.tag set from block ~ ~ ~ Items[{Slot:7b}].tag
execute positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify entity @n[tag=snt_sell_item1,distance=..0.4] item.id set from block ~ ~ ~ Items[{Slot:7b}].id
execute positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 store success score @s snt_shop_test8_item_validation2 run data modify entity @n[tag=snt_sell_item1,distance=..0.4] item set from entity @n[tag=snt_sell_item2,distance=..0.4] item
execute if score @s snt_shop_test8_item_validation2 matches 1 run data modify block ^ ^ ^1 Items[{Slot:7b}].Count set value 0
scoreboard players reset @s snt_shop_test8_item_validation2
execute positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify entity @n[tag=snt_sell_item1,distance=..0.4] item.tag set from block ~ ~ ~ Items[{Slot:8b}].tag
execute positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify entity @n[tag=snt_sell_item1,distance=..0.4] item.id set from block ~ ~ ~ Items[{Slot:8b}].id
execute positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 store success score @s snt_shop_test8_item_validation2 run data modify entity @n[tag=snt_sell_item1,distance=..0.4] item set from entity @n[tag=snt_sell_item2,distance=..0.4] item
execute if score @s snt_shop_test8_item_validation2 matches 1 run data modify block ^ ^ ^1 Items[{Slot:8b}].Count set value 0
scoreboard players reset @s snt_shop_test8_item_validation2
execute positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify entity @n[tag=snt_sell_item1,distance=..0.4] item.tag set from block ~ ~ ~ Items[{Slot:9b}].tag
execute positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify entity @n[tag=snt_sell_item1,distance=..0.4] item.id set from block ~ ~ ~ Items[{Slot:9b}].id
execute positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 store success score @s snt_shop_test8_item_validation2 run data modify entity @n[tag=snt_sell_item1,distance=..0.4] item set from entity @n[tag=snt_sell_item2,distance=..0.4] item
execute if score @s snt_shop_test8_item_validation2 matches 1 run data modify block ^ ^ ^1 Items[{Slot:9b}].Count set value 0
scoreboard players reset @s snt_shop_test8_item_validation2
execute positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify entity @n[tag=snt_sell_item1,distance=..0.4] item.tag set from block ~ ~ ~ Items[{Slot:10b}].tag
execute positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify entity @n[tag=snt_sell_item1,distance=..0.4] item.id set from block ~ ~ ~ Items[{Slot:10b}].id
execute positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 store success score @s snt_shop_test8_item_validation2 run data modify entity @n[tag=snt_sell_item1,distance=..0.4] item set from entity @n[tag=snt_sell_item2,distance=..0.4] item
execute if score @s snt_shop_test8_item_validation2 matches 1 run data modify block ^ ^ ^1 Items[{Slot:10b}].Count set value 0
scoreboard players reset @s snt_shop_test8_item_validation2
execute positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify entity @n[tag=snt_sell_item1,distance=..0.4] item.tag set from block ~ ~ ~ Items[{Slot:11b}].tag
execute positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify entity @n[tag=snt_sell_item1,distance=..0.4] item.id set from block ~ ~ ~ Items[{Slot:11b}].id
execute positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 store success score @s snt_shop_test8_item_validation2 run data modify entity @n[tag=snt_sell_item1,distance=..0.4] item set from entity @n[tag=snt_sell_item2,distance=..0.4] item
execute if score @s snt_shop_test8_item_validation2 matches 1 run data modify block ^ ^ ^1 Items[{Slot:11b}].Count set value 0
scoreboard players reset @s snt_shop_test8_item_validation2
execute positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify entity @n[tag=snt_sell_item1,distance=..0.4] item.tag set from block ~ ~ ~ Items[{Slot:12b}].tag
execute positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify entity @n[tag=snt_sell_item1,distance=..0.4] item.id set from block ~ ~ ~ Items[{Slot:12b}].id
execute positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 store success score @s snt_shop_test8_item_validation2 run data modify entity @n[tag=snt_sell_item1,distance=..0.4] item set from entity @n[tag=snt_sell_item2,distance=..0.4] item
execute if score @s snt_shop_test8_item_validation2 matches 1 run data modify block ^ ^ ^1 Items[{Slot:12b}].Count set value 0
scoreboard players reset @s snt_shop_test8_item_validation2
execute positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify entity @n[tag=snt_sell_item1,distance=..0.4] item.tag set from block ~ ~ ~ Items[{Slot:13b}].tag
execute positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify entity @n[tag=snt_sell_item1,distance=..0.4] item.id set from block ~ ~ ~ Items[{Slot:13b}].id
execute positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 store success score @s snt_shop_test8_item_validation2 run data modify entity @n[tag=snt_sell_item1,distance=..0.4] item set from entity @n[tag=snt_sell_item2,distance=..0.4] item
execute if score @s snt_shop_test8_item_validation2 matches 1 run data modify block ^ ^ ^1 Items[{Slot:13b}].Count set value 0
scoreboard players reset @s snt_shop_test8_item_validation2
execute positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify entity @n[tag=snt_sell_item1,distance=..0.4] item.tag set from block ~ ~ ~ Items[{Slot:14b}].tag
execute positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify entity @n[tag=snt_sell_item1,distance=..0.4] item.id set from block ~ ~ ~ Items[{Slot:14b}].id
execute positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 store success score @s snt_shop_test8_item_validation2 run data modify entity @n[tag=snt_sell_item1,distance=..0.4] item set from entity @n[tag=snt_sell_item2,distance=..0.4] item
execute if score @s snt_shop_test8_item_validation2 matches 1 run data modify block ^ ^ ^1 Items[{Slot:14b}].Count set value 0
scoreboard players reset @s snt_shop_test8_item_validation2
execute positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify entity @n[tag=snt_sell_item1,distance=..0.4] item.tag set from block ~ ~ ~ Items[{Slot:15b}].tag
execute positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify entity @n[tag=snt_sell_item1,distance=..0.4] item.id set from block ~ ~ ~ Items[{Slot:15b}].id
execute positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 store success score @s snt_shop_test8_item_validation2 run data modify entity @n[tag=snt_sell_item1,distance=..0.4] item set from entity @n[tag=snt_sell_item2,distance=..0.4] item
execute if score @s snt_shop_test8_item_validation2 matches 1 run data modify block ^ ^ ^1 Items[{Slot:15b}].Count set value 0
scoreboard players reset @s snt_shop_test8_item_validation2
execute positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify entity @n[tag=snt_sell_item1,distance=..0.4] item.tag set from block ~ ~ ~ Items[{Slot:16b}].tag
execute positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify entity @n[tag=snt_sell_item1,distance=..0.4] item.id set from block ~ ~ ~ Items[{Slot:16b}].id
execute positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 store success score @s snt_shop_test8_item_validation2 run data modify entity @n[tag=snt_sell_item1,distance=..0.4] item set from entity @n[tag=snt_sell_item2,distance=..0.4] item
execute if score @s snt_shop_test8_item_validation2 matches 1 run data modify block ^ ^ ^1 Items[{Slot:16b}].Count set value 0
scoreboard players reset @s snt_shop_test8_item_validation2
execute positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify entity @n[tag=snt_sell_item1,distance=..0.4] item.tag set from block ~ ~ ~ Items[{Slot:17b}].tag
execute positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify entity @n[tag=snt_sell_item1,distance=..0.4] item.id set from block ~ ~ ~ Items[{Slot:17b}].id
execute positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 store success score @s snt_shop_test8_item_validation2 run data modify entity @n[tag=snt_sell_item1,distance=..0.4] item set from entity @n[tag=snt_sell_item2,distance=..0.4] item
execute if score @s snt_shop_test8_item_validation2 matches 1 run data modify block ^ ^ ^1 Items[{Slot:17b}].Count set value 0
scoreboard players reset @s snt_shop_test8_item_validation2
execute positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify entity @n[tag=snt_sell_item1,distance=..0.4] item.tag set from block ~ ~ ~ Items[{Slot:18b}].tag
execute positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify entity @n[tag=snt_sell_item1,distance=..0.4] item.id set from block ~ ~ ~ Items[{Slot:18b}].id
execute positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 store success score @s snt_shop_test8_item_validation2 run data modify entity @n[tag=snt_sell_item1,distance=..0.4] item set from entity @n[tag=snt_sell_item2,distance=..0.4] item
execute if score @s snt_shop_test8_item_validation2 matches 1 run data modify block ^ ^ ^1 Items[{Slot:18b}].Count set value 0
scoreboard players reset @s snt_shop_test8_item_validation2
execute positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify entity @n[tag=snt_sell_item1,distance=..0.4] item.tag set from block ~ ~ ~ Items[{Slot:19b}].tag
execute positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify entity @n[tag=snt_sell_item1,distance=..0.4] item.id set from block ~ ~ ~ Items[{Slot:19b}].id
execute positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 store success score @s snt_shop_test8_item_validation2 run data modify entity @n[tag=snt_sell_item1,distance=..0.4] item set from entity @n[tag=snt_sell_item2,distance=..0.4] item
execute if score @s snt_shop_test8_item_validation2 matches 1 run data modify block ^ ^ ^1 Items[{Slot:19b}].Count set value 0
scoreboard players reset @s snt_shop_test8_item_validation2
execute positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify entity @n[tag=snt_sell_item1,distance=..0.4] item.tag set from block ~ ~ ~ Items[{Slot:20b}].tag
execute positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify entity @n[tag=snt_sell_item1,distance=..0.4] item.id set from block ~ ~ ~ Items[{Slot:20b}].id
execute positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 store success score @s snt_shop_test8_item_validation2 run data modify entity @n[tag=snt_sell_item1,distance=..0.4] item set from entity @n[tag=snt_sell_item2,distance=..0.4] item
execute if score @s snt_shop_test8_item_validation2 matches 1 run data modify block ^ ^ ^1 Items[{Slot:20b}].Count set value 0
scoreboard players reset @s snt_shop_test8_item_validation2
execute positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify entity @n[tag=snt_sell_item1,distance=..0.4] item.tag set from block ~ ~ ~ Items[{Slot:21b}].tag
execute positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify entity @n[tag=snt_sell_item1,distance=..0.4] item.id set from block ~ ~ ~ Items[{Slot:21b}].id
execute positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 store success score @s snt_shop_test8_item_validation2 run data modify entity @n[tag=snt_sell_item1,distance=..0.4] item set from entity @n[tag=snt_sell_item2,distance=..0.4] item
execute if score @s snt_shop_test8_item_validation2 matches 1 run data modify block ^ ^ ^1 Items[{Slot:21b}].Count set value 0
scoreboard players reset @s snt_shop_test8_item_validation2
execute positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify entity @n[tag=snt_sell_item1,distance=..0.4] item.tag set from block ~ ~ ~ Items[{Slot:22b}].tag
execute positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify entity @n[tag=snt_sell_item1,distance=..0.4] item.id set from block ~ ~ ~ Items[{Slot:22b}].id
execute positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 store success score @s snt_shop_test8_item_validation2 run data modify entity @n[tag=snt_sell_item1,distance=..0.4] item set from entity @n[tag=snt_sell_item2,distance=..0.4] item
execute if score @s snt_shop_test8_item_validation2 matches 1 run data modify block ^ ^ ^1 Items[{Slot:22b}].Count set value 0
scoreboard players reset @s snt_shop_test8_item_validation2
execute positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify entity @n[tag=snt_sell_item1,distance=..0.4] item.tag set from block ~ ~ ~ Items[{Slot:23b}].tag
execute positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify entity @n[tag=snt_sell_item1,distance=..0.4] item.id set from block ~ ~ ~ Items[{Slot:23b}].id
execute positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 store success score @s snt_shop_test8_item_validation2 run data modify entity @n[tag=snt_sell_item1,distance=..0.4] item set from entity @n[tag=snt_sell_item2,distance=..0.4] item
execute if score @s snt_shop_test8_item_validation2 matches 1 run data modify block ^ ^ ^1 Items[{Slot:23b}].Count set value 0
scoreboard players reset @s snt_shop_test8_item_validation2
execute positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify entity @n[tag=snt_sell_item1,distance=..0.4] item.tag set from block ~ ~ ~ Items[{Slot:24b}].tag
execute positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify entity @n[tag=snt_sell_item1,distance=..0.4] item.id set from block ~ ~ ~ Items[{Slot:24b}].id
execute positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 store success score @s snt_shop_test8_item_validation2 run data modify entity @n[tag=snt_sell_item1,distance=..0.4] item set from entity @n[tag=snt_sell_item2,distance=..0.4] item
execute if score @s snt_shop_test8_item_validation2 matches 1 run data modify block ^ ^ ^1 Items[{Slot:24b}].Count set value 0
scoreboard players reset @s snt_shop_test8_item_validation2
execute positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify entity @n[tag=snt_sell_item1,distance=..0.4] item.tag set from block ~ ~ ~ Items[{Slot:25b}].tag
execute positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify entity @n[tag=snt_sell_item1,distance=..0.4] item.id set from block ~ ~ ~ Items[{Slot:25b}].id
execute positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 store success score @s snt_shop_test8_item_validation2 run data modify entity @n[tag=snt_sell_item1,distance=..0.4] item set from entity @n[tag=snt_sell_item2,distance=..0.4] item
execute if score @s snt_shop_test8_item_validation2 matches 1 run data modify block ^ ^ ^1 Items[{Slot:25b}].Count set value 0
scoreboard players reset @s snt_shop_test8_item_validation2
execute positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify entity @n[tag=snt_sell_item1,distance=..0.4] item.tag set from block ~ ~ ~ Items[{Slot:26b}].tag
execute positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify entity @n[tag=snt_sell_item1,distance=..0.4] item.id set from block ~ ~ ~ Items[{Slot:26b}].id
execute positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 store success score @s snt_shop_test8_item_validation2 run data modify entity @n[tag=snt_sell_item1,distance=..0.4] item set from entity @n[tag=snt_sell_item2,distance=..0.4] item
execute if score @s snt_shop_test8_item_validation2 matches 1 run data modify block ^ ^ ^1 Items[{Slot:26b}].Count set value 0
scoreboard players reset @s snt_shop_test8_item_validation2

# remove items from the shop
# 1. count the stock
scoreboard players reset @s snt_shop_item_count2
scoreboard players reset @s snt_shop_item_count
scoreboard players reset @s snt_itemcount0
scoreboard players reset @s snt_itemcount1
execute store result score @s snt_shop_item_count run data get block ^ ^ ^1 Items[0].Count
scoreboard players operation @s snt_shop_item_count2 += @s snt_shop_item_count
execute store result score @s snt_shop_item_count run data get block ^ ^ ^1 Items[1].Count
scoreboard players operation @s snt_shop_item_count2 += @s snt_shop_item_count
execute store result score @s snt_shop_item_count run data get block ^ ^ ^1 Items[2].Count
scoreboard players operation @s snt_shop_item_count2 += @s snt_shop_item_count
execute store result score @s snt_shop_item_count run data get block ^ ^ ^1 Items[3].Count
scoreboard players operation @s snt_shop_item_count2 += @s snt_shop_item_count
execute store result score @s snt_shop_item_count run data get block ^ ^ ^1 Items[4].Count
scoreboard players operation @s snt_shop_item_count2 += @s snt_shop_item_count
execute store result score @s snt_shop_item_count run data get block ^ ^ ^1 Items[5].Count
scoreboard players operation @s snt_shop_item_count2 += @s snt_shop_item_count
execute store result score @s snt_shop_item_count run data get block ^ ^ ^1 Items[6].Count
scoreboard players operation @s snt_shop_item_count2 += @s snt_shop_item_count
execute store result score @s snt_shop_item_count run data get block ^ ^ ^1 Items[7].Count
scoreboard players operation @s snt_shop_item_count2 += @s snt_shop_item_count
execute store result score @s snt_shop_item_count run data get block ^ ^ ^1 Items[8].Count
scoreboard players operation @s snt_shop_item_count2 += @s snt_shop_item_count
execute store result score @s snt_shop_item_count run data get block ^ ^ ^1 Items[9].Count
scoreboard players operation @s snt_shop_item_count2 += @s snt_shop_item_count
execute store result score @s snt_shop_item_count run data get block ^ ^ ^1 Items[10].Count
scoreboard players operation @s snt_shop_item_count2 += @s snt_shop_item_count
execute store result score @s snt_shop_item_count run data get block ^ ^ ^1 Items[11].Count
scoreboard players operation @s snt_shop_item_count2 += @s snt_shop_item_count
execute store result score @s snt_shop_item_count run data get block ^ ^ ^1 Items[12].Count
scoreboard players operation @s snt_shop_item_count2 += @s snt_shop_item_count
execute store result score @s snt_shop_item_count run data get block ^ ^ ^1 Items[13].Count
scoreboard players operation @s snt_shop_item_count2 += @s snt_shop_item_count
execute store result score @s snt_shop_item_count run data get block ^ ^ ^1 Items[14].Count
scoreboard players operation @s snt_shop_item_count2 += @s snt_shop_item_count
execute store result score @s snt_shop_item_count run data get block ^ ^ ^1 Items[15].Count
scoreboard players operation @s snt_shop_item_count2 += @s snt_shop_item_count
execute store result score @s snt_shop_item_count run data get block ^ ^ ^1 Items[16].Count
scoreboard players operation @s snt_shop_item_count2 += @s snt_shop_item_count
execute store result score @s snt_shop_item_count run data get block ^ ^ ^1 Items[17].Count
scoreboard players operation @s snt_shop_item_count2 += @s snt_shop_item_count
execute store result score @s snt_shop_item_count run data get block ^ ^ ^1 Items[18].Count
scoreboard players operation @s snt_shop_item_count2 += @s snt_shop_item_count
execute store result score @s snt_shop_item_count run data get block ^ ^ ^1 Items[19].Count
scoreboard players operation @s snt_shop_item_count2 += @s snt_shop_item_count
execute store result score @s snt_shop_item_count run data get block ^ ^ ^1 Items[20].Count
scoreboard players operation @s snt_shop_item_count2 += @s snt_shop_item_count
execute store result score @s snt_shop_item_count run data get block ^ ^ ^1 Items[21].Count
scoreboard players operation @s snt_shop_item_count2 += @s snt_shop_item_count
execute store result score @s snt_shop_item_count run data get block ^ ^ ^1 Items[22].Count
scoreboard players operation @s snt_shop_item_count2 += @s snt_shop_item_count
execute store result score @s snt_shop_item_count run data get block ^ ^ ^1 Items[23].Count
scoreboard players operation @s snt_shop_item_count2 += @s snt_shop_item_count
execute store result score @s snt_shop_item_count run data get block ^ ^ ^1 Items[24].Count
scoreboard players operation @s snt_shop_item_count2 += @s snt_shop_item_count
execute store result score @s snt_shop_item_count run data get block ^ ^ ^1 Items[25].Count
scoreboard players operation @s snt_shop_item_count2 += @s snt_shop_item_count
execute store result score @s snt_shop_item_count run data get block ^ ^ ^1 Items[26].Count
scoreboard players operation @s snt_shop_item_count2 += @s snt_shop_item_count

# 2. check of there is enough stock
scoreboard players operation @s snt_shop_item_count2 -= @s snt_shop_amount

execute if score @s snt_shop_item_count2 matches ..-1 run return run function shop:buy2/shop_empty with storage snt:shop_sign2

# 3. remove the appropriate amount of items
execute store result score @s snt_shop_item_count_stacks run scoreboard players get @s snt_shop_amount
execute store result score @s snt_shop_item_count_remainder run scoreboard players get @s snt_shop_amount

#       determine max. stack size
execute store result score @s snt_itemcount0 run data get block ^ ^ ^1 Items[0].Count
execute store result score @s snt_itemcount1 run data get block ^ ^ ^1 Items[1].Count
execute if score @s snt_itemcount0 >= @s snt_itemcount1 store result score @s snt_stack run scoreboard players get @s snt_itemcount0
execute if score @s snt_itemcount0 < @s snt_itemcount1 store result score @s snt_stack run scoreboard players get @s snt_itemcount1
execute if score @s snt_stack matches 2..16 run scoreboard players set @s snt_stack 16
execute if score @s snt_stack matches 17..64 run scoreboard players set @s snt_stack 64

scoreboard players operation @s snt_shop_item_count_stacks /= @s snt_stack
scoreboard players operation @s snt_shop_item_count_remainder %= @s snt_stack
execute store result score @s snt_stack run data get block ^ ^ ^1 Items[0].Count
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

execute unless score @s snt_stack matches ..-1 store result block ^ ^ ^1 Items[0].Count byte 1 run scoreboard players get @s snt_stack
execute if score @s snt_stack matches ..-1 store result score @s snt_shop_item_count_stacks run data get block ^ ^ ^1 Items[1].Count
execute if score @s snt_stack matches ..-1 run scoreboard players operation @s snt_shop_item_count_stacks += @s snt_stack
execute if score @s snt_stack matches ..-1 store result block ^ ^ ^1 Items[1].Count byte 1 run scoreboard players get @s snt_shop_item_count_stacks
execute if score @s snt_stack matches ..-1 run data modify block ^ ^ ^1 Items[0].Count set value 0

scoreboard players reset @s snt_shop_item_count_stacks
scoreboard players reset @s snt_shop_item_count_remainder
scoreboard players reset @s snt_stack

# give items to the player
execute if score @s snt_shop_test9_nbt_check matches 0 run function shop:buy2/shop_buy_final_no_nbt with storage snt:shop_sign2
execute if score @s snt_shop_test9_nbt_check matches 1 run function shop:buy2/shop_buy_final_nbt with storage snt:shop_sign2
