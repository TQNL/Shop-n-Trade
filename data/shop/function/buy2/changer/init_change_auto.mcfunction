data modify entity @n[type=marker,tag=snt_shop_sign] data.shop_data.item.slot set from block ^ ^ ^1 Items[0].Slot
execute as @n[type=marker,tag=snt_shop_sign] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run return run function shop:buy2/changer/change_auto with entity @s data.shop_data.item
data remove entity @n[type=marker,tag=snt_shop_sign] data.shop_data.item.slot
