# get list entries into 'get' process
## each run of this function, the list has one more component at the end
data modify storage get_components:extract handling.get merge from storage get_components:extract lists.list_component_keys[-1]
function sntlibrary:list2/init_data with storage get_components:extract handling.get
data remove storage get_components:extract handling.get.key
