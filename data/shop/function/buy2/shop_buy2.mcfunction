# now executing as the player and at the shop container with nbt data in the sold item
#  add a type selector
$execute unless entity @e[nbt={data:{owner:$(UUID)}}] run summon marker ~ ~ ~ {Tags:["snt_player_pos"],data:{owner:$(UUID)}}
$execute unless entity @e[nbt={data:{owner:$(UUID)},Pos:$(Pos)}] run function shop:buy2/shop_buy_tell_nbt
$execute unless entity @e[nbt={data:{owner:$(UUID)},Pos:$(Pos)}] run return run tp @e[nbt={data:{owner:$(UUID)}},sort=nearest,limit=1] @s

execute positioned ^ ^ ^-1 as @e[tag=snt_shop_sign,sort=nearest,limit=1] positioned ^ ^ ^1 run function shop:buy2/shop_buy3