# advancement revoked later
execute at @s if data block ~ ~ ~ {front_text:{messages:['""']}} run return 0
execute at @s align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[tag=snt_shop_sign,distance=..0.01] run function shop:enter_sign/enter_sign_macro with entity @s