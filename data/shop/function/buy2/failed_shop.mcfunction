execute positioned ^ ^ ^1 run data remove block ~ ~ ~ Lock

execute unless data block ^ ^ ^1 Items[0] run data merge entity @s {Tags:["snt_shop_sign"]}
execute unless data block ^ ^ ^1 Items[0] run data modify block ~ ~ ~ front_text.messages[2] set value '""'

# get sign back
$execute if entity @s[tag=snt_shop_sign] run data modify block ~ ~ ~ front_text.messages[0] set value '"$(shop_owner)"'
$execute if entity @s[tag=snt_shop_sign] run tellraw $(shop_owner) {"text":"This shop of yours was removed because something went wrong with the items or the sign. The sign is now editable.","color":"red"}
$execute if entity @s[tag=snt_shop_sign] run tag $(shop_owner) remove shop_owner_mode
data merge entity @s {Tags:["snt_potential_shop"]}
# changing tags prevents this from breaking