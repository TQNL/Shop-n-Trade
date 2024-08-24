data modify storage snt:shop_handling enter_sign_test.0 set from block ~ ~ ~ front_text.messages[0]
data modify storage snt:shop_handling enter_sign_test.1 set from block ~ ~ ~ front_text.messages[1]
data modify storage snt:shop_handling enter_sign_test.3 set from block ~ ~ ~ front_text.messages[3]

execute if data storage snt:shop_handling {enter_sign_test:{0:'""'}} run return run data remove storage snt:shop_handling enter_sign_test
execute if data storage snt:shop_handling {enter_sign_test:{1:'""'}} run return run data remove storage snt:shop_handling enter_sign_test
execute if data storage snt:shop_handling {enter_sign_test:{3:'""'}} run return run data remove storage snt:shop_handling enter_sign_test
data remove storage snt:shop_handling enter_sign_test
return 0
