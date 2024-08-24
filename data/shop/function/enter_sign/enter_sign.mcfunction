# advancement revoked later
execute at @s unless data block ~ ~ ~ {front_text:{}} run return 0
execute at @s if function shop:enter_sign/test run return 0
execute at @s align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[type=marker,tag=snt_shop_sign,distance=..0.01] run function shop:enter_sign/enter_sign_macro with entity @s
