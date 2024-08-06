# instruction: remove the needs for the item display and interaction
execute positioned ^ ^ ^1 run data remove block ~ ~ ~ Lock
# clean up any data left

# get sign back
$execute if entity @s[tag=snt_shop_sign] run data modify block ~ ~ ~ front_text.messages[0] set value '"$(shop_owner)"'
$execute if entity @s[tag=snt_shop_sign] run tellraw $(shop_owner) {"text":"This shop of yours was removed because of a change in items. The sign is now editable.","color":"red"}
$execute if entity @s[tag=snt_shop_sign] run tag $(shop_owner) remove shop_owner_mode
data merge entity @s {Tags:["snt_potential_shop"]}
