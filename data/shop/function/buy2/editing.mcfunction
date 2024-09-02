tag @s add shop_owner_mode
tellraw @s {"text": "Shop unlocked, relocks once you are further than 32 blocks away or click the sign again!","color": "blue"}
$tellraw @s {"clickEvent":{"action":"run_command","value":"/execute as @e[type=marker,tag=snt_shop_sign,nbt={UUID:$(UUID)}] at @s run setblock ~ ~ ~ air destroy"},"color":"dark_red","hoverEvent":{"action":"show_text","value":[{"text":"Action cannot be undone"}]},"text":"Click here to destroy this selected shop, be careful!","underlined":true}
