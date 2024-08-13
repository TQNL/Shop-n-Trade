# critical
$function sntlibrary:list2/get_data with $(source) $(target) $(path)

# save data
data modify storage get_components:extract lists.list_component_data append value {data:''}
$data modify storage get_components:extract lists.list_component_data[-1].data set from storage get_components:extract handling.comp_extract.$(key)
