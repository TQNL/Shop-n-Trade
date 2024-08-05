data modify storage snt:shop_handling price set string block -1 -60 10 front_text.messages[3] 1 45
execute if function shop_recode:price_extraction/1 run return run function shop_recode:say
