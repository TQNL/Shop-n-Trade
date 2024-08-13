$data modify storage snt:shop_handling enter_sign."$(UUID)".name set from block ~ ~ ~ front_text.messages[0]
$data modify storage snt:shop_handling enter_sign."$(UUID)".name set string storage snt:shop_handling enter_sign."$(UUID)".name 1 -1
$function shop:enter_sign/enter_sign_macro2 with storage snt:shop_handling enter_sign."$(UUID)"