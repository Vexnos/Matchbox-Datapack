# Generic Items
execute unless score @s crossbowUsed matches 1.. run item replace entity @s hotbar.8 with crossbow[unbreakable={}]
execute unless score @s crossbowUsed matches 1.. run item replace entity @s hotbar.7 with spectral_arrow 1
give @s iron_axe[unbreakable={},can_break={predicates:[{blocks:"oak_sign"},{blocks:"oak_wall_sign"}],show_in_tooltip:true}] 1
give @s oak_sign 48