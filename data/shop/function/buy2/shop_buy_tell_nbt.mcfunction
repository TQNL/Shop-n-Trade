scoreboard players add @s shop_dp_isWalking 0
scoreboard players add @s shop_dp_isSprinting 0
scoreboard players add @s shop_dp_isCrouching 0

# all nbt tags tellraw
tellraw @s {"text": "This shop offers items with nbt data (like enchantments or shulker boxes), verify if this is what you are looking for.\nclick again to buy, move to cancel.\n(1b mostly means 'yes')","color": "gray"}
execute if data block ~ ~ ~ Items[0].tag.Damage run tellraw @s [{"text":"Damage: ","color":"green"},{"nbt":"Items[0].tag.Damage","block":"~ ~ ~","color":"white"}]
execute if data block ~ ~ ~ Items[0].tag.Unbreakable run tellraw @s [{"text":"Unbreakable: ","color":"green"},{"nbt":"Items[0].tag.Unbreakable","block":"~ ~ ~","color":"white"}]
execute if data block ~ ~ ~ Items[0].tag.CanDestroy run tellraw @s [{"text":"CanDestroy: ","color":"green"},{"nbt":"Items[0].tag.CanDestroy","block":"~ ~ ~","color":"white"}]
execute if data block ~ ~ ~ Items[0].tag.CustomModelData run tellraw @s [{"text":"CustomModelData: ","color":"green"},{"nbt":"Items[0].tag.CustomModelData","block":"~ ~ ~","color":"white"}]
execute if data block ~ ~ ~ Items[0].tag.AttributeModifiers run tellraw @s [{"text":"AttributeModifiers: ","color":"green"},{"nbt":"Items[0].tag.AttributeModifiers","block":"~ ~ ~","color":"white"}]
execute if data block ~ ~ ~ Items[0].tag.CanPlaceOn run tellraw @s [{"text":"CanPlaceOn: ","color":"green"},{"nbt":"Items[0].tag.CanPlaceOn","block":"~ ~ ~","color":"white"}]
execute if data block ~ ~ ~ Items[0].tag.BlockEntityTag unless data block ~ ~ ~ Items[0].tag.BlockEntityTag.Items run tellraw @s [{"text":"BlockEntityTag: ","color":"green"},{"nbt":"Items[0].tag.BlockEntityTag","block":"~ ~ ~","color":"white"}]

# shulker box
#execute if data block ~ ~ ~ Items[0].tag.BlockEntityTag.Items run tellraw @s [{"text":"BlockEntityTag: ","color":"green"},{"nbt":"Items[0].tag.BlockEntityTag","block":"~ ~ ~","color":"white"}]
execute if data block ~ ~ ~ Items[0].tag.BlockEntityTag.Items run tellraw @s {"text":"Items: ","color":"green"}
execute if data block ~ ~ ~ Items[0].tag.BlockEntityTag.Items run data modify storage snt:nbt_data items.0.id set string block ~ ~ ~ Items[0].tag.BlockEntityTag.Items[0].id 10
execute if data block ~ ~ ~ Items[0].tag.BlockEntityTag.Items run data modify storage snt:nbt_data items.1.id set string block ~ ~ ~ Items[0].tag.BlockEntityTag.Items[1].id 10
execute if data block ~ ~ ~ Items[0].tag.BlockEntityTag.Items run data modify storage snt:nbt_data items.2.id set string block ~ ~ ~ Items[0].tag.BlockEntityTag.Items[2].id 10
execute if data block ~ ~ ~ Items[0].tag.BlockEntityTag.Items run data modify storage snt:nbt_data items.3.id set string block ~ ~ ~ Items[0].tag.BlockEntityTag.Items[3].id 10
execute if data block ~ ~ ~ Items[0].tag.BlockEntityTag.Items run data modify storage snt:nbt_data items.4.id set string block ~ ~ ~ Items[0].tag.BlockEntityTag.Items[4].id 10
execute if data block ~ ~ ~ Items[0].tag.BlockEntityTag.Items run data modify storage snt:nbt_data items.5.id set string block ~ ~ ~ Items[0].tag.BlockEntityTag.Items[5].id 10
execute if data block ~ ~ ~ Items[0].tag.BlockEntityTag.Items run data modify storage snt:nbt_data items.6.id set string block ~ ~ ~ Items[0].tag.BlockEntityTag.Items[6].id 10
execute if data block ~ ~ ~ Items[0].tag.BlockEntityTag.Items run data modify storage snt:nbt_data items.7.id set string block ~ ~ ~ Items[0].tag.BlockEntityTag.Items[7].id 10
execute if data block ~ ~ ~ Items[0].tag.BlockEntityTag.Items run data modify storage snt:nbt_data items.8.id set string block ~ ~ ~ Items[0].tag.BlockEntityTag.Items[8].id 10
execute if data block ~ ~ ~ Items[0].tag.BlockEntityTag.Items run data modify storage snt:nbt_data items.9.id set string block ~ ~ ~ Items[0].tag.BlockEntityTag.Items[9].id 10
execute if data block ~ ~ ~ Items[0].tag.BlockEntityTag.Items run data modify storage snt:nbt_data items.10.id set string block ~ ~ ~ Items[0].tag.BlockEntityTag.Items[10].id 10
execute if data block ~ ~ ~ Items[0].tag.BlockEntityTag.Items run data modify storage snt:nbt_data items.0.Count set string block ~ ~ ~ Items[0].tag.BlockEntityTag.Items[0].Count 0 -1
execute if data block ~ ~ ~ Items[0].tag.BlockEntityTag.Items run data modify storage snt:nbt_data items.1.Count set string block ~ ~ ~ Items[0].tag.BlockEntityTag.Items[1].Count 0 -1
execute if data block ~ ~ ~ Items[0].tag.BlockEntityTag.Items run data modify storage snt:nbt_data items.2.Count set string block ~ ~ ~ Items[0].tag.BlockEntityTag.Items[2].Count 0 -1
execute if data block ~ ~ ~ Items[0].tag.BlockEntityTag.Items run data modify storage snt:nbt_data items.3.Count set string block ~ ~ ~ Items[0].tag.BlockEntityTag.Items[3].Count 0 -1
execute if data block ~ ~ ~ Items[0].tag.BlockEntityTag.Items run data modify storage snt:nbt_data items.4.Count set string block ~ ~ ~ Items[0].tag.BlockEntityTag.Items[4].Count 0 -1
execute if data block ~ ~ ~ Items[0].tag.BlockEntityTag.Items run data modify storage snt:nbt_data items.5.Count set string block ~ ~ ~ Items[0].tag.BlockEntityTag.Items[5].Count 0 -1
execute if data block ~ ~ ~ Items[0].tag.BlockEntityTag.Items run data modify storage snt:nbt_data items.6.Count set string block ~ ~ ~ Items[0].tag.BlockEntityTag.Items[6].Count 0 -1
execute if data block ~ ~ ~ Items[0].tag.BlockEntityTag.Items run data modify storage snt:nbt_data items.7.Count set string block ~ ~ ~ Items[0].tag.BlockEntityTag.Items[7].Count 0 -1
execute if data block ~ ~ ~ Items[0].tag.BlockEntityTag.Items run data modify storage snt:nbt_data items.8.Count set string block ~ ~ ~ Items[0].tag.BlockEntityTag.Items[8].Count 0 -1
execute if data block ~ ~ ~ Items[0].tag.BlockEntityTag.Items run data modify storage snt:nbt_data items.9.Count set string block ~ ~ ~ Items[0].tag.BlockEntityTag.Items[9].Count 0 -1
execute if data block ~ ~ ~ Items[0].tag.BlockEntityTag.Items run data modify storage snt:nbt_data items.10.Count set string block ~ ~ ~ Items[0].tag.BlockEntityTag.Items[10].Count 0 -1
execute if data storage snt:nbt_data items.0 run tellraw @s [{"nbt":"items.0.Count","storage":"snt:nbt_data"},{"text":" "},{"nbt":"items.0.id","storage":"snt:nbt_data"},{"nbt":"Items[0].tag.BlockEntityTag.Items[0].tag","block":"~ ~ ~"}]
execute if data storage snt:nbt_data items.1 run tellraw @s [{"nbt":"items.1.Count","storage":"snt:nbt_data"},{"text":" "},{"nbt":"items.1.id","storage":"snt:nbt_data"},{"nbt":"Items[0].tag.BlockEntityTag.Items[1].tag","block":"~ ~ ~"}]
execute if data storage snt:nbt_data items.2 run tellraw @s [{"nbt":"items.2.Count","storage":"snt:nbt_data"},{"text":" "},{"nbt":"items.2.id","storage":"snt:nbt_data"},{"nbt":"Items[0].tag.BlockEntityTag.Items[2].tag","block":"~ ~ ~"}]
execute if data storage snt:nbt_data items.3 run tellraw @s [{"nbt":"items.3.Count","storage":"snt:nbt_data"},{"text":" "},{"nbt":"items.3.id","storage":"snt:nbt_data"},{"nbt":"Items[0].tag.BlockEntityTag.Items[3].tag","block":"~ ~ ~"}]
execute if data storage snt:nbt_data items.4 run tellraw @s [{"nbt":"items.4.Count","storage":"snt:nbt_data"},{"text":" "},{"nbt":"items.4.id","storage":"snt:nbt_data"},{"nbt":"Items[0].tag.BlockEntityTag.Items[4].tag","block":"~ ~ ~"}]
execute if data storage snt:nbt_data items.5 run tellraw @s [{"nbt":"items.5.Count","storage":"snt:nbt_data"},{"text":" "},{"nbt":"items.5.id","storage":"snt:nbt_data"},{"nbt":"Items[0].tag.BlockEntityTag.Items[5].tag","block":"~ ~ ~"}]
execute if data storage snt:nbt_data items.6 run tellraw @s [{"nbt":"items.6.Count","storage":"snt:nbt_data"},{"text":" "},{"nbt":"items.6.id","storage":"snt:nbt_data"},{"nbt":"Items[0].tag.BlockEntityTag.Items[6].tag","block":"~ ~ ~"}]
execute if data storage snt:nbt_data items.7 run tellraw @s [{"nbt":"items.7.Count","storage":"snt:nbt_data"},{"text":" "},{"nbt":"items.7.id","storage":"snt:nbt_data"},{"nbt":"Items[0].tag.BlockEntityTag.Items[7].tag","block":"~ ~ ~"}]
execute if data storage snt:nbt_data items.8 run tellraw @s [{"nbt":"items.8.Count","storage":"snt:nbt_data"},{"text":" "},{"nbt":"items.8.id","storage":"snt:nbt_data"},{"nbt":"Items[0].tag.BlockEntityTag.Items[8].tag","block":"~ ~ ~"}]
execute if data storage snt:nbt_data items.9 run tellraw @s [{"nbt":"items.9.Count","storage":"snt:nbt_data"},{"text":" "},{"nbt":"items.9.id","storage":"snt:nbt_data"},{"nbt":"Items[0].tag.BlockEntityTag.Items[9].tag","block":"~ ~ ~"}]
execute if data storage snt:nbt_data items.10 run tellraw @s [{"nbt":"items.10.Count","storage":"snt:nbt_data"},{"text":" "},{"nbt":"items.10.id","storage":"snt:nbt_data"},{"nbt":"Items[0].tag.BlockEntityTag.Items[10].tag","block":"~ ~ ~"}]
execute if data block ~ ~ ~ Items[0].tag.BlockEntityTag.Items[11] run tellraw @s {"text": "and more..."}
execute if data block ~ ~ ~ Items[0].tag.BlockEntityTag.Items run data remove storage snt:nbt_data items

execute if data block ~ ~ ~ Items[0].tag.BlockStateTag run tellraw @s [{"text":"BlockStateTag: ","color":"green"},{"nbt":"Items[0].tag.BlockStateTag","block":"~ ~ ~","color":"white"}]
execute if data block ~ ~ ~ Items[0].tag.display run tellraw @s [{"text":"display: ","color":"green"},{"nbt":"Items[0].tag.display","block":"~ ~ ~","color":"white"}]
execute if data block ~ ~ ~ Items[0].tag.HideFlags run tellraw @s [{"text":"HideFlags: ","color":"green"},{"nbt":"Items[0].tag.HideFlags","block":"~ ~ ~","color":"white"}]

# 0-10
#execute if data block ~ ~ ~ Items[0].tag.Enchantments[0] run tellraw @s [{"text":"Enchantments: ","color":"green"},{"nbt":"Items[0].tag.Enchantments[0].id","block":"~ ~ ~","color":"white"}]
execute if data block ~ ~ ~ Items[0].tag.Enchantments run tellraw @s {"text":"Enchantments: ","color":"green"}
execute if data block ~ ~ ~ Items[0].tag.Enchantments run data modify storage snt:nbt_data enchantments.0.id set string block ~ ~ ~ Items[0].tag.Enchantments[0].id 10
execute if data block ~ ~ ~ Items[0].tag.Enchantments run data modify storage snt:nbt_data enchantments.1.id set string block ~ ~ ~ Items[0].tag.Enchantments[1].id 10
execute if data block ~ ~ ~ Items[0].tag.Enchantments run data modify storage snt:nbt_data enchantments.2.id set string block ~ ~ ~ Items[0].tag.Enchantments[2].id 10
execute if data block ~ ~ ~ Items[0].tag.Enchantments run data modify storage snt:nbt_data enchantments.3.id set string block ~ ~ ~ Items[0].tag.Enchantments[3].id 10
execute if data block ~ ~ ~ Items[0].tag.Enchantments run data modify storage snt:nbt_data enchantments.4.id set string block ~ ~ ~ Items[0].tag.Enchantments[4].id 10
execute if data block ~ ~ ~ Items[0].tag.Enchantments run data modify storage snt:nbt_data enchantments.5.id set string block ~ ~ ~ Items[0].tag.Enchantments[5].id 10
execute if data block ~ ~ ~ Items[0].tag.Enchantments run data modify storage snt:nbt_data enchantments.6.id set string block ~ ~ ~ Items[0].tag.Enchantments[6].id 10
execute if data block ~ ~ ~ Items[0].tag.Enchantments run data modify storage snt:nbt_data enchantments.7.id set string block ~ ~ ~ Items[0].tag.Enchantments[7].id 10
execute if data block ~ ~ ~ Items[0].tag.Enchantments run data modify storage snt:nbt_data enchantments.8.id set string block ~ ~ ~ Items[0].tag.Enchantments[8].id 10
execute if data block ~ ~ ~ Items[0].tag.Enchantments run data modify storage snt:nbt_data enchantments.9.id set string block ~ ~ ~ Items[0].tag.Enchantments[9].id 10
execute if data block ~ ~ ~ Items[0].tag.Enchantments run data modify storage snt:nbt_data enchantments.10.id set string block ~ ~ ~ Items[0].tag.Enchantments[10].id 10
execute if data block ~ ~ ~ Items[0].tag.Enchantments run data modify storage snt:nbt_data enchantments.0.lvl set string block ~ ~ ~ Items[0].tag.Enchantments[0].lvl 0 -1
execute if data block ~ ~ ~ Items[0].tag.Enchantments run data modify storage snt:nbt_data enchantments.1.lvl set string block ~ ~ ~ Items[0].tag.Enchantments[1].lvl 0 -1
execute if data block ~ ~ ~ Items[0].tag.Enchantments run data modify storage snt:nbt_data enchantments.2.lvl set string block ~ ~ ~ Items[0].tag.Enchantments[2].lvl 0 -1
execute if data block ~ ~ ~ Items[0].tag.Enchantments run data modify storage snt:nbt_data enchantments.3.lvl set string block ~ ~ ~ Items[0].tag.Enchantments[3].lvl 0 -1
execute if data block ~ ~ ~ Items[0].tag.Enchantments run data modify storage snt:nbt_data enchantments.4.lvl set string block ~ ~ ~ Items[0].tag.Enchantments[4].lvl 0 -1
execute if data block ~ ~ ~ Items[0].tag.Enchantments run data modify storage snt:nbt_data enchantments.5.lvl set string block ~ ~ ~ Items[0].tag.Enchantments[5].lvl 0 -1
execute if data block ~ ~ ~ Items[0].tag.Enchantments run data modify storage snt:nbt_data enchantments.6.lvl set string block ~ ~ ~ Items[0].tag.Enchantments[6].lvl 0 -1
execute if data block ~ ~ ~ Items[0].tag.Enchantments run data modify storage snt:nbt_data enchantments.7.lvl set string block ~ ~ ~ Items[0].tag.Enchantments[7].lvl 0 -1
execute if data block ~ ~ ~ Items[0].tag.Enchantments run data modify storage snt:nbt_data enchantments.8.lvl set string block ~ ~ ~ Items[0].tag.Enchantments[8].lvl 0 -1
execute if data block ~ ~ ~ Items[0].tag.Enchantments run data modify storage snt:nbt_data enchantments.9.lvl set string block ~ ~ ~ Items[0].tag.Enchantments[9].lvl 0 -1
execute if data block ~ ~ ~ Items[0].tag.Enchantments run data modify storage snt:nbt_data enchantments.10.lvl set string block ~ ~ ~ Items[0].tag.Enchantments[10].lvl 0 -1
execute if data storage snt:nbt_data enchantments.0 run tellraw @s [{"nbt":"enchantments.0.id","storage":"snt:nbt_data"},{"text":" "},{"nbt":"enchantments.0.lvl","storage":"snt:nbt_data"}]
execute if data storage snt:nbt_data enchantments.1 run tellraw @s [{"nbt":"enchantments.1.id","storage":"snt:nbt_data"},{"text":" "},{"nbt":"enchantments.1.lvl","storage":"snt:nbt_data"}]
execute if data storage snt:nbt_data enchantments.2 run tellraw @s [{"nbt":"enchantments.2.id","storage":"snt:nbt_data"},{"text":" "},{"nbt":"enchantments.2.lvl","storage":"snt:nbt_data"}]
execute if data storage snt:nbt_data enchantments.3 run tellraw @s [{"nbt":"enchantments.3.id","storage":"snt:nbt_data"},{"text":" "},{"nbt":"enchantments.3.lvl","storage":"snt:nbt_data"}]
execute if data storage snt:nbt_data enchantments.4 run tellraw @s [{"nbt":"enchantments.4.id","storage":"snt:nbt_data"},{"text":" "},{"nbt":"enchantments.4.lvl","storage":"snt:nbt_data"}]
execute if data storage snt:nbt_data enchantments.5 run tellraw @s [{"nbt":"enchantments.5.id","storage":"snt:nbt_data"},{"text":" "},{"nbt":"enchantments.5.lvl","storage":"snt:nbt_data"}]
execute if data storage snt:nbt_data enchantments.6 run tellraw @s [{"nbt":"enchantments.6.id","storage":"snt:nbt_data"},{"text":" "},{"nbt":"enchantments.6.lvl","storage":"snt:nbt_data"}]
execute if data storage snt:nbt_data enchantments.7 run tellraw @s [{"nbt":"enchantments.7.id","storage":"snt:nbt_data"},{"text":" "},{"nbt":"enchantments.7.lvl","storage":"snt:nbt_data"}]
execute if data storage snt:nbt_data enchantments.8 run tellraw @s [{"nbt":"enchantments.8.id","storage":"snt:nbt_data"},{"text":" "},{"nbt":"enchantments.8.lvl","storage":"snt:nbt_data"}]
execute if data storage snt:nbt_data enchantments.9 run tellraw @s [{"nbt":"enchantments.9.id","storage":"snt:nbt_data"},{"text":" "},{"nbt":"enchantments.9.lvl","storage":"snt:nbt_data"}]
execute if data storage snt:nbt_data enchantments.10 run tellraw @s [{"nbt":"enchantments.10.id","storage":"snt:nbt_data"},{"text":" "},{"nbt":"enchantments.10.lvl","storage":"snt:nbt_data"}]
execute if data block ~ ~ ~ Items[0].tag.Enchantments run data remove storage snt:nbt_data enchantments

# 0-10
#execute if data block ~ ~ ~ Items[0].tag.StoredEnchantments run tellraw @s [{"text":"Enchantments: ","color":"green"},{"nbt":"Items[0].tag.StoredEnchantments","block":"~ ~ ~","color":"white"}]
execute if data block ~ ~ ~ Items[0].tag.StoredEnchantments run tellraw @s {"text":"Enchantments: ","color":"green"}
execute if data block ~ ~ ~ Items[0].tag.StoredEnchantments run data modify storage snt:nbt_data enchantments.0.id set string block ~ ~ ~ Items[0].tag.StoredEnchantments[0].id 10
execute if data block ~ ~ ~ Items[0].tag.StoredEnchantments run data modify storage snt:nbt_data enchantments.1.id set string block ~ ~ ~ Items[0].tag.StoredEnchantments[1].id 10
execute if data block ~ ~ ~ Items[0].tag.StoredEnchantments run data modify storage snt:nbt_data enchantments.2.id set string block ~ ~ ~ Items[0].tag.StoredEnchantments[2].id 10
execute if data block ~ ~ ~ Items[0].tag.StoredEnchantments run data modify storage snt:nbt_data enchantments.3.id set string block ~ ~ ~ Items[0].tag.StoredEnchantments[3].id 10
execute if data block ~ ~ ~ Items[0].tag.StoredEnchantments run data modify storage snt:nbt_data enchantments.4.id set string block ~ ~ ~ Items[0].tag.StoredEnchantments[4].id 10
execute if data block ~ ~ ~ Items[0].tag.StoredEnchantments run data modify storage snt:nbt_data enchantments.5.id set string block ~ ~ ~ Items[0].tag.StoredEnchantments[5].id 10
execute if data block ~ ~ ~ Items[0].tag.StoredEnchantments run data modify storage snt:nbt_data enchantments.6.id set string block ~ ~ ~ Items[0].tag.StoredEnchantments[6].id 10
execute if data block ~ ~ ~ Items[0].tag.StoredEnchantments run data modify storage snt:nbt_data enchantments.7.id set string block ~ ~ ~ Items[0].tag.StoredEnchantments[7].id 10
execute if data block ~ ~ ~ Items[0].tag.StoredEnchantments run data modify storage snt:nbt_data enchantments.8.id set string block ~ ~ ~ Items[0].tag.StoredEnchantments[8].id 10
execute if data block ~ ~ ~ Items[0].tag.StoredEnchantments run data modify storage snt:nbt_data enchantments.9.id set string block ~ ~ ~ Items[0].tag.StoredEnchantments[9].id 10
execute if data block ~ ~ ~ Items[0].tag.StoredEnchantments run data modify storage snt:nbt_data enchantments.10.id set string block ~ ~ ~ Items[0].tag.StoredEnchantments[10].id 10
execute if data block ~ ~ ~ Items[0].tag.StoredEnchantments run data modify storage snt:nbt_data enchantments.0.lvl set string block ~ ~ ~ Items[0].tag.StoredEnchantments[0].lvl 0 -1
execute if data block ~ ~ ~ Items[0].tag.StoredEnchantments run data modify storage snt:nbt_data enchantments.1.lvl set string block ~ ~ ~ Items[0].tag.StoredEnchantments[1].lvl 0 -1
execute if data block ~ ~ ~ Items[0].tag.StoredEnchantments run data modify storage snt:nbt_data enchantments.2.lvl set string block ~ ~ ~ Items[0].tag.StoredEnchantments[2].lvl 0 -1
execute if data block ~ ~ ~ Items[0].tag.StoredEnchantments run data modify storage snt:nbt_data enchantments.3.lvl set string block ~ ~ ~ Items[0].tag.StoredEnchantments[3].lvl 0 -1
execute if data block ~ ~ ~ Items[0].tag.StoredEnchantments run data modify storage snt:nbt_data enchantments.4.lvl set string block ~ ~ ~ Items[0].tag.StoredEnchantments[4].lvl 0 -1
execute if data block ~ ~ ~ Items[0].tag.StoredEnchantments run data modify storage snt:nbt_data enchantments.5.lvl set string block ~ ~ ~ Items[0].tag.StoredEnchantments[5].lvl 0 -1
execute if data block ~ ~ ~ Items[0].tag.StoredEnchantments run data modify storage snt:nbt_data enchantments.6.lvl set string block ~ ~ ~ Items[0].tag.StoredEnchantments[6].lvl 0 -1
execute if data block ~ ~ ~ Items[0].tag.StoredEnchantments run data modify storage snt:nbt_data enchantments.7.lvl set string block ~ ~ ~ Items[0].tag.StoredEnchantments[7].lvl 0 -1
execute if data block ~ ~ ~ Items[0].tag.StoredEnchantments run data modify storage snt:nbt_data enchantments.8.lvl set string block ~ ~ ~ Items[0].tag.StoredEnchantments[8].lvl 0 -1
execute if data block ~ ~ ~ Items[0].tag.StoredEnchantments run data modify storage snt:nbt_data enchantments.9.lvl set string block ~ ~ ~ Items[0].tag.StoredEnchantments[9].lvl 0 -1
execute if data block ~ ~ ~ Items[0].tag.StoredEnchantments run data modify storage snt:nbt_data enchantments.10.lvl set string block ~ ~ ~ Items[0].tag.StoredEnchantments[10].lvl 0 -1
execute if data storage snt:nbt_data enchantments.0 run tellraw @s [{"nbt":"enchantments.0.id","storage":"snt:nbt_data"},{"text":" "},{"nbt":"enchantments.0.lvl","storage":"snt:nbt_data"}]
execute if data storage snt:nbt_data enchantments.1 run tellraw @s [{"nbt":"enchantments.1.id","storage":"snt:nbt_data"},{"text":" "},{"nbt":"enchantments.1.lvl","storage":"snt:nbt_data"}]
execute if data storage snt:nbt_data enchantments.2 run tellraw @s [{"nbt":"enchantments.2.id","storage":"snt:nbt_data"},{"text":" "},{"nbt":"enchantments.2.lvl","storage":"snt:nbt_data"}]
execute if data storage snt:nbt_data enchantments.3 run tellraw @s [{"nbt":"enchantments.3.id","storage":"snt:nbt_data"},{"text":" "},{"nbt":"enchantments.3.lvl","storage":"snt:nbt_data"}]
execute if data storage snt:nbt_data enchantments.4 run tellraw @s [{"nbt":"enchantments.4.id","storage":"snt:nbt_data"},{"text":" "},{"nbt":"enchantments.4.lvl","storage":"snt:nbt_data"}]
execute if data storage snt:nbt_data enchantments.5 run tellraw @s [{"nbt":"enchantments.5.id","storage":"snt:nbt_data"},{"text":" "},{"nbt":"enchantments.5.lvl","storage":"snt:nbt_data"}]
execute if data storage snt:nbt_data enchantments.6 run tellraw @s [{"nbt":"enchantments.6.id","storage":"snt:nbt_data"},{"text":" "},{"nbt":"enchantments.6.lvl","storage":"snt:nbt_data"}]
execute if data storage snt:nbt_data enchantments.7 run tellraw @s [{"nbt":"enchantments.7.id","storage":"snt:nbt_data"},{"text":" "},{"nbt":"enchantments.7.lvl","storage":"snt:nbt_data"}]
execute if data storage snt:nbt_data enchantments.8 run tellraw @s [{"nbt":"enchantments.8.id","storage":"snt:nbt_data"},{"text":" "},{"nbt":"enchantments.8.lvl","storage":"snt:nbt_data"}]
execute if data storage snt:nbt_data enchantments.9 run tellraw @s [{"nbt":"enchantments.9.id","storage":"snt:nbt_data"},{"text":" "},{"nbt":"enchantments.9.lvl","storage":"snt:nbt_data"}]
execute if data storage snt:nbt_data enchantments.10 run tellraw @s [{"nbt":"enchantments.10.id","storage":"snt:nbt_data"},{"text":" "},{"nbt":"enchantments.10.lvl","storage":"snt:nbt_data"}]
execute if data block ~ ~ ~ Items[0].tag.StoredEnchantments run data remove storage snt:nbt_data enchantments

execute if data block ~ ~ ~ Items[0].tag.RepairCost run tellraw @s [{"text":"RepairCost: ","color":"green"},{"nbt":"Items[0].tag.RepairCost","block":"~ ~ ~","color":"white"}]

execute if data block ~ ~ ~ Items[0].tag.custom_potion_effects run tellraw @s [{"text":"custom_potion_effects: ","color":"green"},{"nbt":"Items[0].tag.custom_potion_effects","block":"~ ~ ~","color":"white"}]
execute if data block ~ ~ ~ Items[0].tag.Potion run tellraw @s [{"text":"Potion: ","color":"green"},{"nbt":"Items[0].tag.Potion","block":"~ ~ ~","color":"white"}]
execute if data block ~ ~ ~ Items[0].tag.CustomPotionColor run tellraw @s [{"text":"CustomPotionColor: ","color":"green"},{"nbt":"Items[0].tag.CustomPotionColor","block":"~ ~ ~","color":"white"}]

execute if data block ~ ~ ~ Items[0].tag.Trim run tellraw @s [{"text":"Trim: ","color":"green"},{"nbt":"Items[0].tag.Trim","block":"~ ~ ~","color":"white"}]
execute if data block ~ ~ ~ Items[0].tag.EntityTag run tellraw @s [{"text":"EntityTag: ","color":"green"},{"nbt":"Items[0].tag.EntityTag","block":"~ ~ ~","color":"white"}]
execute if data block ~ ~ ~ Items[0].tag.generation run tellraw @s [{"text":"generation: ","color":"green"},{"nbt":"Items[0].tag.generation","block":"~ ~ ~","color":"white"}]
execute if data block ~ ~ ~ Items[0].tag.author run tellraw @s [{"text":"author: ","color":"green"},{"nbt":"Items[0].tag.author","block":"~ ~ ~","color":"white"}]
execute if data block ~ ~ ~ Items[0].tag.title run tellraw @s [{"text":"title: ","color":"green"},{"nbt":"Items[0].tag.title","block":"~ ~ ~","color":"white"}]
execute if data block ~ ~ ~ Items[0].tag.pages run tellraw @s [{"text":"pages: ","color":"green"},{"nbt":"Items[0].tag.pages","block":"~ ~ ~","color":"white"}]
execute if data block ~ ~ ~ Items[0].tag.BucketVariantTag run tellraw @s [{"text":"BucketVariantTag: ","color":"green"},{"nbt":"Items[0].tag.BucketVariantTag","block":"~ ~ ~","color":"white"}]

# bundles
#execute if data block ~ ~ ~ Items[0].tag.Items run tellraw @s [{"text":"Items: ","color":"green"},{"nbt":"Items[0].tag.Items","block":"~ ~ ~","color":"white"}]
execute if data block ~ ~ ~ Items[0].tag.Items run tellraw @s {"text":"Items: ","color":"green"}
execute if data block ~ ~ ~ Items[0].tag.Items run data modify storage snt:nbt_data items.0.id set string block ~ ~ ~ Items[0].tag.Items[0].id 10
execute if data block ~ ~ ~ Items[0].tag.Items run data modify storage snt:nbt_data items.1.id set string block ~ ~ ~ Items[0].tag.Items[1].id 10
execute if data block ~ ~ ~ Items[0].tag.Items run data modify storage snt:nbt_data items.2.id set string block ~ ~ ~ Items[0].tag.Items[2].id 10
execute if data block ~ ~ ~ Items[0].tag.Items run data modify storage snt:nbt_data items.3.id set string block ~ ~ ~ Items[0].tag.Items[3].id 10
execute if data block ~ ~ ~ Items[0].tag.Items run data modify storage snt:nbt_data items.4.id set string block ~ ~ ~ Items[0].tag.Items[4].id 10
execute if data block ~ ~ ~ Items[0].tag.Items run data modify storage snt:nbt_data items.5.id set string block ~ ~ ~ Items[0].tag.Items[5].id 10
execute if data block ~ ~ ~ Items[0].tag.Items run data modify storage snt:nbt_data items.6.id set string block ~ ~ ~ Items[0].tag.Items[6].id 10
execute if data block ~ ~ ~ Items[0].tag.Items run data modify storage snt:nbt_data items.7.id set string block ~ ~ ~ Items[0].tag.Items[7].id 10
execute if data block ~ ~ ~ Items[0].tag.Items run data modify storage snt:nbt_data items.8.id set string block ~ ~ ~ Items[0].tag.Items[8].id 10
execute if data block ~ ~ ~ Items[0].tag.Items run data modify storage snt:nbt_data items.9.id set string block ~ ~ ~ Items[0].tag.Items[9].id 10
execute if data block ~ ~ ~ Items[0].tag.Items run data modify storage snt:nbt_data items.10.id set string block ~ ~ ~ Items[0].tag.Items[10].id 10
execute if data block ~ ~ ~ Items[0].tag.Items run data modify storage snt:nbt_data items.0.Count set string block ~ ~ ~ Items[0].tag.Items[0].Count 0 -1
execute if data block ~ ~ ~ Items[0].tag.Items run data modify storage snt:nbt_data items.1.Count set string block ~ ~ ~ Items[0].tag.Items[1].Count 0 -1
execute if data block ~ ~ ~ Items[0].tag.Items run data modify storage snt:nbt_data items.2.Count set string block ~ ~ ~ Items[0].tag.Items[2].Count 0 -1
execute if data block ~ ~ ~ Items[0].tag.Items run data modify storage snt:nbt_data items.3.Count set string block ~ ~ ~ Items[0].tag.Items[3].Count 0 -1
execute if data block ~ ~ ~ Items[0].tag.Items run data modify storage snt:nbt_data items.4.Count set string block ~ ~ ~ Items[0].tag.Items[4].Count 0 -1
execute if data block ~ ~ ~ Items[0].tag.Items run data modify storage snt:nbt_data items.5.Count set string block ~ ~ ~ Items[0].tag.Items[5].Count 0 -1
execute if data block ~ ~ ~ Items[0].tag.Items run data modify storage snt:nbt_data items.6.Count set string block ~ ~ ~ Items[0].tag.Items[6].Count 0 -1
execute if data block ~ ~ ~ Items[0].tag.Items run data modify storage snt:nbt_data items.7.Count set string block ~ ~ ~ Items[0].tag.Items[7].Count 0 -1
execute if data block ~ ~ ~ Items[0].tag.Items run data modify storage snt:nbt_data items.8.Count set string block ~ ~ ~ Items[0].tag.Items[8].Count 0 -1
execute if data block ~ ~ ~ Items[0].tag.Items run data modify storage snt:nbt_data items.9.Count set string block ~ ~ ~ Items[0].tag.Items[9].Count 0 -1
execute if data block ~ ~ ~ Items[0].tag.Items run data modify storage snt:nbt_data items.10.Count set string block ~ ~ ~ Items[0].tag.Items[10].Count 0 -1
execute if data storage snt:nbt_data items.0 run tellraw @s [{"nbt":"items.0.Count","storage":"snt:nbt_data"},{"text":" "},{"nbt":"items.0.id","storage":"snt:nbt_data"},{"nbt":"Items[0].tag.Items[0].tag","block":"~ ~ ~"}]
execute if data storage snt:nbt_data items.1 run tellraw @s [{"nbt":"items.1.Count","storage":"snt:nbt_data"},{"text":" "},{"nbt":"items.1.id","storage":"snt:nbt_data"},{"nbt":"Items[0].tag.Items[1].tag","block":"~ ~ ~"}]
execute if data storage snt:nbt_data items.2 run tellraw @s [{"nbt":"items.2.Count","storage":"snt:nbt_data"},{"text":" "},{"nbt":"items.2.id","storage":"snt:nbt_data"},{"nbt":"Items[0].tag.Items[2].tag","block":"~ ~ ~"}]
execute if data storage snt:nbt_data items.3 run tellraw @s [{"nbt":"items.3.Count","storage":"snt:nbt_data"},{"text":" "},{"nbt":"items.3.id","storage":"snt:nbt_data"},{"nbt":"Items[0].tag.Items[3].tag","block":"~ ~ ~"}]
execute if data storage snt:nbt_data items.4 run tellraw @s [{"nbt":"items.4.Count","storage":"snt:nbt_data"},{"text":" "},{"nbt":"items.4.id","storage":"snt:nbt_data"},{"nbt":"Items[0].tag.Items[4].tag","block":"~ ~ ~"}]
execute if data storage snt:nbt_data items.5 run tellraw @s [{"nbt":"items.5.Count","storage":"snt:nbt_data"},{"text":" "},{"nbt":"items.5.id","storage":"snt:nbt_data"},{"nbt":"Items[0].tag.Items[5].tag","block":"~ ~ ~"}]
execute if data storage snt:nbt_data items.6 run tellraw @s [{"nbt":"items.6.Count","storage":"snt:nbt_data"},{"text":" "},{"nbt":"items.6.id","storage":"snt:nbt_data"},{"nbt":"Items[0].tag.Items[6].tag","block":"~ ~ ~"}]
execute if data storage snt:nbt_data items.7 run tellraw @s [{"nbt":"items.7.Count","storage":"snt:nbt_data"},{"text":" "},{"nbt":"items.7.id","storage":"snt:nbt_data"},{"nbt":"Items[0].tag.Items[7].tag","block":"~ ~ ~"}]
execute if data storage snt:nbt_data items.8 run tellraw @s [{"nbt":"items.8.Count","storage":"snt:nbt_data"},{"text":" "},{"nbt":"items.8.id","storage":"snt:nbt_data"},{"nbt":"Items[0].tag.Items[8].tag","block":"~ ~ ~"}]
execute if data storage snt:nbt_data items.9 run tellraw @s [{"nbt":"items.9.Count","storage":"snt:nbt_data"},{"text":" "},{"nbt":"items.9.id","storage":"snt:nbt_data"},{"nbt":"Items[0].tag.Items[9].tag","block":"~ ~ ~"}]
execute if data storage snt:nbt_data items.10 run tellraw @s [{"nbt":"items.10.Count","storage":"snt:nbt_data"},{"text":" "},{"nbt":"items.10.id","storage":"snt:nbt_data"},{"nbt":"Items[0].tag.Items[10].tag","block":"~ ~ ~"}]
execute if data block ~ ~ ~ Items[0].tag.Items[11] run tellraw @s {"text": "and more..."}
execute if data block ~ ~ ~ Items[0].tag.Items run data remove storage snt:nbt_data items

execute if data block ~ ~ ~ Items[0].tag.LodestoneTracked run tellraw @s [{"text":"LodestoneTracked: ","color":"green"},{"nbt":"Items[0].tag.LodestoneTracked","block":"~ ~ ~","color":"white"}]
execute if data block ~ ~ ~ Items[0].tag.LodestoneDimension run tellraw @s [{"text":"LodestoneDimension: ","color":"green"},{"nbt":"Items[0].tag.LodestoneDimension","block":"~ ~ ~","color":"white"}]
execute if data block ~ ~ ~ Items[0].tag.LodestonePos run tellraw @s [{"text":"LodestonePos: ","color":"green"},{"nbt":"Items[0].tag.LodestonePos","block":"~ ~ ~","color":"white"}]
execute if data block ~ ~ ~ Items[0].tag.ChargedProjectiles run tellraw @s [{"text":"ChargedProjectiles: ","color":"green"},{"nbt":"Items[0].tag.ChargedProjectiles","block":"~ ~ ~","color":"white"}]
execute if data block ~ ~ ~ Items[0].tag.Charged run tellraw @s [{"text":"Charged: ","color":"green"},{"nbt":"Items[0].tag.Charged","block":"~ ~ ~","color":"white"}]
execute if data block ~ ~ ~ Items[0].tag.DebugProperty run tellraw @s [{"text":"DebugProperty: ","color":"green"},{"nbt":"Items[0].tag.DebugProperty","block":"~ ~ ~","color":"white"}]

# Fireworks
# fire work color to tellraw color? storage snt:nbt_data
#execute if data block ~ ~ ~ Items[0].tag.Fireworks run tellraw @s [{"text":"Fireworks: ","color":"green"},{"nbt":"Items[0].tag.Fireworks","block":"~ ~ ~","color":"white"}]
execute if data block ~ ~ ~ Items[0].tag.Fireworks.Flight run tellraw @s [{"text":"Flight Duration: ","color":"green"},{"nbt":"Items[0].tag.Fireworks.Flight","block":"~ ~ ~","color":"white"}]
execute if data block ~ ~ ~ Items[0].tag.Fireworks run tellraw @s {"text":"Fireworks: ","color":"green"}
execute if data block ~ ~ ~ Items[0].tag.Fireworks.Explosions[0] store result score @s snt_firework run data get block ~ ~ ~ Items[0].tag.Fireworks.Explosions[0].Type
execute if data block ~ ~ ~ Items[0].tag.Fireworks.Explosions[0] if score @s snt_firework matches 0 run data modify storage snt:nbt_data fireworks.0 set value Small_Ball
execute if data block ~ ~ ~ Items[0].tag.Fireworks.Explosions[0] if score @s snt_firework matches 1 run data modify storage snt:nbt_data fireworks.0 set value Large_Ball
execute if data block ~ ~ ~ Items[0].tag.Fireworks.Explosions[0] if score @s snt_firework matches 2 run data modify storage snt:nbt_data fireworks.0 set value Star-shaped
execute if data block ~ ~ ~ Items[0].tag.Fireworks.Explosions[0] if score @s snt_firework matches 3 run data modify storage snt:nbt_data fireworks.0 set value Creeper-shaped
execute if data block ~ ~ ~ Items[0].tag.Fireworks.Explosions[0] if score @s snt_firework matches 4 run data modify storage snt:nbt_data fireworks.0 set value Burst
scoreboard players reset @s snt_firework
execute if data block ~ ~ ~ Items[0].tag.Fireworks.Explosions[1] store result score @s snt_firework run data get block ~ ~ ~ Items[0].tag.Fireworks.Explosions[1].Type
execute if data block ~ ~ ~ Items[0].tag.Fireworks.Explosions[1] if score @s snt_firework matches 0 run data modify storage snt:nbt_data fireworks.1 set value Small_Ball
execute if data block ~ ~ ~ Items[0].tag.Fireworks.Explosions[1] if score @s snt_firework matches 1 run data modify storage snt:nbt_data fireworks.1 set value Large_Ball
execute if data block ~ ~ ~ Items[0].tag.Fireworks.Explosions[1] if score @s snt_firework matches 2 run data modify storage snt:nbt_data fireworks.1 set value Star-shaped
execute if data block ~ ~ ~ Items[0].tag.Fireworks.Explosions[1] if score @s snt_firework matches 3 run data modify storage snt:nbt_data fireworks.1 set value Creeper-shaped
execute if data block ~ ~ ~ Items[0].tag.Fireworks.Explosions[1] if score @s snt_firework matches 4 run data modify storage snt:nbt_data fireworks.1 set value Burst
scoreboard players reset @s snt_firework
execute if data block ~ ~ ~ Items[0].tag.Fireworks.Explosions[2] store result score @s snt_firework run data get block ~ ~ ~ Items[0].tag.Fireworks.Explosions[2].Type
execute if data block ~ ~ ~ Items[0].tag.Fireworks.Explosions[2] if score @s snt_firework matches 0 run data modify storage snt:nbt_data fireworks.2 set value Small_Ball
execute if data block ~ ~ ~ Items[0].tag.Fireworks.Explosions[2] if score @s snt_firework matches 1 run data modify storage snt:nbt_data fireworks.2 set value Large_Ball
execute if data block ~ ~ ~ Items[0].tag.Fireworks.Explosions[2] if score @s snt_firework matches 2 run data modify storage snt:nbt_data fireworks.2 set value Star-shaped
execute if data block ~ ~ ~ Items[0].tag.Fireworks.Explosions[2] if score @s snt_firework matches 3 run data modify storage snt:nbt_data fireworks.2 set value Creeper-shaped
execute if data block ~ ~ ~ Items[0].tag.Fireworks.Explosions[2] if score @s snt_firework matches 4 run data modify storage snt:nbt_data fireworks.2 set value Burst
scoreboard players reset @s snt_firework
execute if data block ~ ~ ~ Items[0].tag.Fireworks.Explosions[3] store result score @s snt_firework run data get block ~ ~ ~ Items[0].tag.Fireworks.Explosions[3].Type
execute if data block ~ ~ ~ Items[0].tag.Fireworks.Explosions[3] if score @s snt_firework matches 0 run data modify storage snt:nbt_data fireworks.3 set value Small_Ball
execute if data block ~ ~ ~ Items[0].tag.Fireworks.Explosions[3] if score @s snt_firework matches 1 run data modify storage snt:nbt_data fireworks.3 set value Large_Ball
execute if data block ~ ~ ~ Items[0].tag.Fireworks.Explosions[3] if score @s snt_firework matches 2 run data modify storage snt:nbt_data fireworks.3 set value Star-shaped
execute if data block ~ ~ ~ Items[0].tag.Fireworks.Explosions[3] if score @s snt_firework matches 3 run data modify storage snt:nbt_data fireworks.3 set value Creeper-shaped
execute if data block ~ ~ ~ Items[0].tag.Fireworks.Explosions[3] if score @s snt_firework matches 4 run data modify storage snt:nbt_data fireworks.3 set value Burst
scoreboard players reset @s snt_firework
execute if data block ~ ~ ~ Items[0].tag.Fireworks.Explosions[4] store result score @s snt_firework run data get block ~ ~ ~ Items[0].tag.Fireworks.Explosions[4].Type
execute if data block ~ ~ ~ Items[0].tag.Fireworks.Explosions[4] if score @s snt_firework matches 0 run data modify storage snt:nbt_data fireworks.4 set value Small_Ball
execute if data block ~ ~ ~ Items[0].tag.Fireworks.Explosions[4] if score @s snt_firework matches 1 run data modify storage snt:nbt_data fireworks.4 set value Large_Ball
execute if data block ~ ~ ~ Items[0].tag.Fireworks.Explosions[4] if score @s snt_firework matches 2 run data modify storage snt:nbt_data fireworks.4 set value Star-shaped
execute if data block ~ ~ ~ Items[0].tag.Fireworks.Explosions[4] if score @s snt_firework matches 3 run data modify storage snt:nbt_data fireworks.4 set value Creeper-shaped
execute if data block ~ ~ ~ Items[0].tag.Fireworks.Explosions[4] if score @s snt_firework matches 4 run data modify storage snt:nbt_data fireworks.4 set value Burst
scoreboard players reset @s snt_firework
execute if data block ~ ~ ~ Items[0].tag.Fireworks.Explosions[5] store result score @s snt_firework run data get block ~ ~ ~ Items[0].tag.Fireworks.Explosions[5].Type
execute if data block ~ ~ ~ Items[0].tag.Fireworks.Explosions[5] if score @s snt_firework matches 0 run data modify storage snt:nbt_data fireworks.5 set value Small_Ball
execute if data block ~ ~ ~ Items[0].tag.Fireworks.Explosions[5] if score @s snt_firework matches 1 run data modify storage snt:nbt_data fireworks.5 set value Large_Ball
execute if data block ~ ~ ~ Items[0].tag.Fireworks.Explosions[5] if score @s snt_firework matches 2 run data modify storage snt:nbt_data fireworks.5 set value Star-shaped
execute if data block ~ ~ ~ Items[0].tag.Fireworks.Explosions[5] if score @s snt_firework matches 3 run data modify storage snt:nbt_data fireworks.5 set value Creeper-shaped
execute if data block ~ ~ ~ Items[0].tag.Fireworks.Explosions[5] if score @s snt_firework matches 4 run data modify storage snt:nbt_data fireworks.5 set value Burst
scoreboard players reset @s snt_firework
execute if data block ~ ~ ~ Items[0].tag.Fireworks.Explosions[6] store result score @s snt_firework run data get block ~ ~ ~ Items[0].tag.Fireworks.Explosions[6].Type
execute if data block ~ ~ ~ Items[0].tag.Fireworks.Explosions[6] if score @s snt_firework matches 0 run data modify storage snt:nbt_data fireworks.6 set value Small_Ball
execute if data block ~ ~ ~ Items[0].tag.Fireworks.Explosions[6] if score @s snt_firework matches 1 run data modify storage snt:nbt_data fireworks.6 set value Large_Ball
execute if data block ~ ~ ~ Items[0].tag.Fireworks.Explosions[6] if score @s snt_firework matches 2 run data modify storage snt:nbt_data fireworks.6 set value Star-shaped
execute if data block ~ ~ ~ Items[0].tag.Fireworks.Explosions[6] if score @s snt_firework matches 3 run data modify storage snt:nbt_data fireworks.6 set value Creeper-shaped
execute if data block ~ ~ ~ Items[0].tag.Fireworks.Explosions[6] if score @s snt_firework matches 4 run data modify storage snt:nbt_data fireworks.6 set value Burst
scoreboard players reset @s snt_firework

execute if data storage snt:nbt_data fireworks.0 run tellraw @s [{"text": "1. "},{"nbt":"fireworks.0","storage":"snt:nbt_data"}]
execute if data storage snt:nbt_data fireworks.0 if data block ~ ~ ~ Items[0].tag.Fireworks.Explosions[0].Flicker run tellraw @s {"text": "  - Flicker"}
execute if data storage snt:nbt_data fireworks.0 if data block ~ ~ ~ Items[0].tag.Fireworks.Explosions[0].Trail run tellraw @s {"text": "  - Trail"}
execute if data storage snt:nbt_data fireworks.0 if data block ~ ~ ~ Items[0].tag.Fireworks.Explosions[0].Colors run tellraw @s [{"text": "  - List of colors: "},{"nbt":"Items[0].tag.Fireworks.Explosions[0].Colors","block":"~ ~ ~"}]
execute if data storage snt:nbt_data fireworks.0 if data block ~ ~ ~ Items[0].tag.Fireworks.Explosions[0].FadeColors run tellraw @s [{"text": "  - List of fade-out colors: "},{"nbt":"Items[0].tag.Fireworks.Explosions[0].FadeColors","block":"~ ~ ~"}]
execute if data block ~ ~ ~ Items[0].tag.Fireworks.Explosions[0] run tellraw @s {"text": ""}

execute if data storage snt:nbt_data fireworks.1 run tellraw @s [{"text": "2. "},{"nbt":"fireworks.1","storage":"snt:nbt_data"}]
execute if data storage snt:nbt_data fireworks.1 if data block ~ ~ ~ Items[0].tag.Fireworks.Explosions[1].Flicker run tellraw @s {"text": "  - Flicker"}
execute if data storage snt:nbt_data fireworks.1 if data block ~ ~ ~ Items[0].tag.Fireworks.Explosions[1].Trail run tellraw @s {"text": "  - Trail"}
execute if data storage snt:nbt_data fireworks.1 if data block ~ ~ ~ Items[0].tag.Fireworks.Explosions[1].Colors run tellraw @s [{"text": "  - List of colors: "},{"nbt":"Items[0].tag.Fireworks.Explosions[0].Colors","block":"~ ~ ~"}]
execute if data storage snt:nbt_data fireworks.1 if data block ~ ~ ~ Items[0].tag.Fireworks.Explosions[1].FadeColors run tellraw @s [{"text": "  - List of fade-out colors: "},{"nbt":"Items[0].tag.Fireworks.Explosions[0].FadeColors","block":"~ ~ ~"}]
execute if data block ~ ~ ~ Items[0].tag.Fireworks.Explosions[1] run tellraw @s {"text": ""}

execute if data storage snt:nbt_data fireworks.2 run tellraw @s [{"text": "3. "},{"nbt":"fireworks.2","storage":"snt:nbt_data"}]
execute if data storage snt:nbt_data fireworks.2 if data block ~ ~ ~ Items[0].tag.Fireworks.Explosions[2].Flicker run tellraw @s {"text": "  - Flicker"}
execute if data storage snt:nbt_data fireworks.2 if data block ~ ~ ~ Items[0].tag.Fireworks.Explosions[2].Trail run tellraw @s {"text": "  - Trail"}
execute if data storage snt:nbt_data fireworks.2 if data block ~ ~ ~ Items[0].tag.Fireworks.Explosions[2].Colors run tellraw @s [{"text": "  - List of colors: "},{"nbt":"Items[0].tag.Fireworks.Explosions[0].Colors","block":"~ ~ ~"}]
execute if data storage snt:nbt_data fireworks.2 if data block ~ ~ ~ Items[0].tag.Fireworks.Explosions[2].FadeColors run tellraw @s [{"text": "  - List of fade-out colors: "},{"nbt":"Items[0].tag.Fireworks.Explosions[0].FadeColors","block":"~ ~ ~"}]
execute if data block ~ ~ ~ Items[0].tag.Fireworks.Explosions[2] run tellraw @s {"text": ""}

execute if data storage snt:nbt_data fireworks.3 run tellraw @s [{"text": "4. "},{"nbt":"fireworks.3","storage":"snt:nbt_data"}]
execute if data storage snt:nbt_data fireworks.3 if data block ~ ~ ~ Items[0].tag.Fireworks.Explosions[3].Flicker run tellraw @s {"text": "  - Flicker"}
execute if data storage snt:nbt_data fireworks.3 if data block ~ ~ ~ Items[0].tag.Fireworks.Explosions[3].Trail run tellraw @s {"text": "  - Trail"}
execute if data storage snt:nbt_data fireworks.3 if data block ~ ~ ~ Items[0].tag.Fireworks.Explosions[3].Colors run tellraw @s [{"text": "  - List of colors: "},{"nbt":"Items[0].tag.Fireworks.Explosions[0].Colors","block":"~ ~ ~"}]
execute if data storage snt:nbt_data fireworks.3 if data block ~ ~ ~ Items[0].tag.Fireworks.Explosions[3].FadeColors run tellraw @s [{"text": "  - List of fade-out colors: "},{"nbt":"Items[0].tag.Fireworks.Explosions[0].FadeColors","block":"~ ~ ~"}]
execute if data block ~ ~ ~ Items[0].tag.Fireworks.Explosions[3] run tellraw @s {"text": ""}

execute if data storage snt:nbt_data fireworks.4 run tellraw @s [{"text": "5. "},{"nbt":"fireworks.4","storage":"snt:nbt_data"}]
execute if data storage snt:nbt_data fireworks.4 if data block ~ ~ ~ Items[0].tag.Fireworks.Explosions[4].Flicker run tellraw @s {"text": "  - Flicker"}
execute if data storage snt:nbt_data fireworks.4 if data block ~ ~ ~ Items[0].tag.Fireworks.Explosions[4].Trail run tellraw @s {"text": "  - Trail"}
execute if data storage snt:nbt_data fireworks.4 if data block ~ ~ ~ Items[0].tag.Fireworks.Explosions[4].Colors run tellraw @s [{"text": "  - List of colors: "},{"nbt":"Items[0].tag.Fireworks.Explosions[0].Colors","block":"~ ~ ~"}]
execute if data storage snt:nbt_data fireworks.4 if data block ~ ~ ~ Items[0].tag.Fireworks.Explosions[4].FadeColors run tellraw @s [{"text": "  - List of fade-out colors: "},{"nbt":"Items[0].tag.Fireworks.Explosions[0].FadeColors","block":"~ ~ ~"}]
execute if data block ~ ~ ~ Items[0].tag.Fireworks.Explosions[4] run tellraw @s {"text": ""}

execute if data storage snt:nbt_data fireworks.5 run tellraw @s [{"text": "6. "},{"nbt":"fireworks.5","storage":"snt:nbt_data"}]
execute if data storage snt:nbt_data fireworks.5 if data block ~ ~ ~ Items[0].tag.Fireworks.Explosions[5].Flicker run tellraw @s {"text": "  - Flicker"}
execute if data storage snt:nbt_data fireworks.5 if data block ~ ~ ~ Items[0].tag.Fireworks.Explosions[5].Trail run tellraw @s {"text": "  - Trail"}
execute if data storage snt:nbt_data fireworks.5 if data block ~ ~ ~ Items[0].tag.Fireworks.Explosions[5].Colors run tellraw @s [{"text": "  - List of colors: "},{"nbt":"Items[0].tag.Fireworks.Explosions[0].Colors","block":"~ ~ ~"}]
execute if data storage snt:nbt_data fireworks.5 if data block ~ ~ ~ Items[0].tag.Fireworks.Explosions[5].FadeColors run tellraw @s [{"text": "  - List of fade-out colors: "},{"nbt":"Items[0].tag.Fireworks.Explosions[0].FadeColors","block":"~ ~ ~"}]
execute if data block ~ ~ ~ Items[0].tag.Fireworks.Explosions[5] run tellraw @s {"text": ""}

execute if data storage snt:nbt_data fireworks.6 run tellraw @s [{"text": "7. "},{"nbt":"fireworks.6","storage":"snt:nbt_data"}]
execute if data storage snt:nbt_data fireworks.6 if data block ~ ~ ~ Items[0].tag.Fireworks.Explosions[6].Flicker run tellraw @s {"text": "  - Flicker"}
execute if data storage snt:nbt_data fireworks.6 if data block ~ ~ ~ Items[0].tag.Fireworks.Explosions[6].Trail run tellraw @s {"text": "  - Trail"}
execute if data storage snt:nbt_data fireworks.6 if data block ~ ~ ~ Items[0].tag.Fireworks.Explosions[6].Colors run tellraw @s [{"text": "  - List of colors: "},{"nbt":"Items[0].tag.Fireworks.Explosions[0].Colors","block":"~ ~ ~"}]
execute if data storage snt:nbt_data fireworks.6 if data block ~ ~ ~ Items[0].tag.Fireworks.Explosions[6].FadeColors run tellraw @s [{"text": "  - List of fade-out colors: "},{"nbt":"Items[0].tag.Fireworks.Explosions[0].FadeColors","block":"~ ~ ~"}]
execute if data block ~ ~ ~ Items[0].tag.Fireworks.Explosions[6] run tellraw @s {"text": ""}

execute if data block ~ ~ ~ Items[0].tag.Fireworks.Explosions run tellraw @s [{"text": "15790320  ","color": "white"},{"text": "11250603  ","color": "gray"},{"text": "4408131  ","color": "dark_gray"},{"text": "1973019  ","color": "black"},{"text": "5320730  ","color": "#7F3300"},{"text": "11743532  ","color": "red"},{"text": "15435844  ","color": "gold"},{"text": "14602026  ","color": "yellow"}]
execute if data block ~ ~ ~ Items[0].tag.Fireworks.Explosions run tellraw @s [{"text": "4312372  ","color": "#007F0E"},{"text": "3887386  ","color": "green"},{"text": "2651799  ","color": "#2D7393"},{"text": "6719955  ","color": "#00FFFF"},{"text": "2437522  ","color": "blue"},{"text": "8073150  ","color": "dark_purple"},{"text": "12801229  ","color": "#CB69C5"},{"text": "14188952  ","color": "#EDA7CB"}]
execute if data block ~ ~ ~ Items[0].tag.Fireworks.Explosions run data remove storage snt:nbt_data fireworks

# Firework stars
#execute if data block ~ ~ ~ Items[0].tag.Explosion run tellraw @s [{"text":"Explosion: ","color":"green"},{"nbt":"Items[0].tag.Explosion","block":"~ ~ ~","color":"white"}]
execute if data block ~ ~ ~ Items[0].tag.Explosion run tellraw @s {"text":"Firework Star Explosion: ","color":"green"}
execute if data block ~ ~ ~ Items[0].tag.Explosion store result score @s snt_firework run data get block ~ ~ ~ Items[0].tag.Explosion.Type
execute if data block ~ ~ ~ Items[0].tag.Explosion if score @s snt_firework matches 0 run data modify storage snt:nbt_data fireworks.star set value Small_Ball
execute if data block ~ ~ ~ Items[0].tag.Explosion if score @s snt_firework matches 1 run data modify storage snt:nbt_data fireworks.star set value Large_Ball
execute if data block ~ ~ ~ Items[0].tag.Explosion if score @s snt_firework matches 2 run data modify storage snt:nbt_data fireworks.star set value Star-shaped
execute if data block ~ ~ ~ Items[0].tag.Explosion if score @s snt_firework matches 3 run data modify storage snt:nbt_data fireworks.star set value Creeper-shaped
execute if data block ~ ~ ~ Items[0].tag.Explosion if score @s snt_firework matches 4 run data modify storage snt:nbt_data fireworks.star set value Burst
scoreboard players reset @s snt_firework

execute if data storage snt:nbt_data fireworks.star run tellraw @s [{"text": "1. "},{"nbt":"fireworks.star","storage":"snt:nbt_data"}]
execute if data storage snt:nbt_data fireworks.star if data block ~ ~ ~ Items[0].tag.Explosion.Flicker run tellraw @s {"text": "  - Flicker"}
execute if data storage snt:nbt_data fireworks.star if data block ~ ~ ~ Items[0].tag.Explosion.Trail run tellraw @s {"text": "  - Trail"}
execute if data storage snt:nbt_data fireworks.star if data block ~ ~ ~ Items[0].tag.Explosion.Colors run tellraw @s [{"text": "  - List of colors: "},{"nbt":"Items[0].tag.Explosion.Colors","block":"~ ~ ~"}]
execute if data storage snt:nbt_data fireworks.star if data block ~ ~ ~ Items[0].tag.Explosion.FadeColors run tellraw @s [{"text": "  - List of fade-out colors: "},{"nbt":"Items[0].tag.Explosion.FadeColors","block":"~ ~ ~"}]
execute if data block ~ ~ ~ Items[0].tag.Explosion run tellraw @s {"text": ""}

execute if data block ~ ~ ~ Items[0].tag.Explosion run tellraw @s [{"text": "15790320  ","color": "white"},{"text": "11250603  ","color": "gray"},{"text": "4408131  ","color": "dark_gray"},{"text": "1973019  ","color": "black"},{"text": "5320730  ","color": "#7F3300"},{"text": "11743532  ","color": "red"},{"text": "15435844  ","color": "gold"},{"text": "14602026  ","color": "yellow"}]
execute if data block ~ ~ ~ Items[0].tag.Explosion run tellraw @s [{"text": "4312372  ","color": "#007F0E"},{"text": "3887386  ","color": "green"},{"text": "2651799  ","color": "#2D7393"},{"text": "6719955  ","color": "#00FFFF"},{"text": "2437522  ","color": "blue"},{"text": "8073150  ","color": "dark_purple"},{"text": "12801229  ","color": "#CB69C5"},{"text": "14188952  ","color": "#EDA7CB"}]
execute if data block ~ ~ ~ Items[0].tag.Explosion run data remove storage snt:nbt_data fireworks