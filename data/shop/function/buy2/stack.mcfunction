execute store result score @s snt_itemcount0 run data get block ^ ^ ^1 Items[0].count
execute store result score @s snt_itemcount1 run data get block ^ ^ ^1 Items[1].count
execute if score @s snt_itemcount0 >= @s snt_itemcount1 store result score @s snt_stack run scoreboard players get @s snt_itemcount0
execute if score @s snt_itemcount0 < @s snt_itemcount1 store result score @s snt_stack run scoreboard players get @s snt_itemcount1
execute if score @s snt_stack matches 2..16 run scoreboard players set @s snt_stack 16
execute if score @s snt_stack matches 17..64 run scoreboard players set @s snt_stack 64
execute store result entity @s data.shop_data.stack_size int 1 run scoreboard players get @s snt_stack
