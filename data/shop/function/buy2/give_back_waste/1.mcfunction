execute unless data entity @n[tag=snt_shop_sign] data.item_storage.list[0].components run function shop:buy2/give_back_waste/2 with entity @n[tag=snt_shop_sign] data.item_storage.list[0]
execute if data entity @n[tag=snt_shop_sign] data.item_storage.list[0].components run function shop:buy2/give_back_waste/2_nbt with entity @n[tag=snt_shop_sign] data.item_storage.list[0]
data remove entity @n[tag=snt_shop_sign] data.item_storage.list[0]
execute if data entity @n[tag=snt_shop_sign] data.item_storage.list[0] run return run function shop:buy2/give_back_waste/1
data remove entity @n[tag=snt_shop_sign] data.item_storage
