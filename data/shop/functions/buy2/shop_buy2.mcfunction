# now executing as the player and at the shop container with nbt data in the sold item

tag @e[tag=snt_player_pos_acting] remove snt_player_pos_acting
$execute unless entity @e[nbt={data:{owner:$(UUID)}}] run summon marker ~ ~ ~ {Tags:["snt_player_pos"],data:{owner:$(UUID)}}
$execute unless entity @e[nbt={data:{owner:$(UUID)},Pos:$(Pos)}] run function shop:buy2/shop_buy_tell_nbt
$execute unless entity @e[nbt={data:{owner:$(UUID)},Pos:$(Pos)}] run tag @e[nbt={data:{owner:$(UUID)}},sort=nearest,limit=1] add snt_player_pos_acting
$execute unless entity @e[nbt={data:{owner:$(UUID)},Pos:$(Pos)}] run tp @e[nbt={data:{owner:$(UUID)}},sort=nearest,limit=1] @s
execute as @e[tag=snt_player_pos_acting] run return 0

execute positioned ^ ^ ^-1 as @e[tag=snt_shop_sign,sort=nearest,limit=1] positioned ^ ^ ^1 run function shop:buy2/shop_buy3