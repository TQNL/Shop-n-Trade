$data modify storage get_components:extract handling.check set string storage get_components:extract handling.string $(iteration) $(iteration_plus)

$execute unless score #snt_lib_sq_counter get_components_library matches 1 unless score #snt_lib_br_counter get_components_library matches 1.. if data storage get_components:extract {handling:{check:'"'}} run function sntlibrary:list1/fixer {n:$(iteration),n_plus:$(iteration_plus)}

# if string between double quotes was found
execute if score #snt_lib_dq_count get_components_library matches 0 run function sntlibrary:list1/list with storage get_components:extract handling.dq


# avoid values between '' and {}
execute if data storage get_components:extract {handling:{check:"'"}} run function sntlibrary:list1/warner
execute if data storage get_components:extract {handling:{check:'{'}} run scoreboard players add #snt_lib_br_counter get_components_library 1
execute if data storage get_components:extract {handling:{check:'}'}} run function sntlibrary:list1/warner2


# terminate
execute if score #snt_lib_iteration get_components_library > #snt_lib_string_length get_components_library run return 0


# continue iterating
data remove storage get_components:extract handling.check
scoreboard players add #snt_lib_iteration get_components_library 1
scoreboard players add #snt_lib_iteration_plus get_components_library 1
execute store result storage get_components:extract handling.iteration int 1 run scoreboard players get #snt_lib_iteration get_components_library
execute store result storage get_components:extract handling.iteration_plus int 1 run scoreboard players get #snt_lib_iteration_plus get_components_library
function sntlibrary:list1/iterate with storage get_components:extract handling
