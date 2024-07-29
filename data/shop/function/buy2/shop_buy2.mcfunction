# now executing as the player and at the shop container with nbt data in the sold item
#  add a type selector
$execute unless entity @e[nbt={data:{owner:$(UUID)}}] run summon marker ~ ~ ~ {Tags:["snt_player_pos"],data:{owner:$(UUID)}}
$execute unless entity @e[nbt={data:{owner:$(UUID)},Pos:$(Pos)}] run function shop:buy2/shop_buy_tell_nbt
$execute unless entity @n[nbt={data:{owner:$(UUID)},Pos:$(Pos)}] run return run tp @e[nbt={data:{owner:$(UUID)}}] @s

execute positioned ^ ^ ^-1 as @n[tag=snt_shop_sign] positioned ^ ^ ^1 run function shop:buy2/shop_buy3