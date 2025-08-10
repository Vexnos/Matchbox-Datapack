# Generic Items
execute unless score @s crossbowUsed matches 1.. run item replace entity @s hotbar.8 with crossbow[unbreakable={}]
execute unless score @s crossbowUsed matches 1.. run item replace entity @s hotbar.7 with spectral_arrow 1
give @s oak_sign 32
give @s wooden_axe[unbreakable={},can_break={predicates:[{blocks:"minecraft:oak_sign"},{blocks:"mineraft:oak_wall_sign"}]}]