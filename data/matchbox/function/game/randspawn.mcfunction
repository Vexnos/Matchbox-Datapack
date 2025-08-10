# Roll
execute store result score @s randomroll run random value 1..4

execute if score @s randomroll matches 1 run tp @s @e[tag=moss_gardens,limit=1]
execute if score @s randomroll matches 2 run tp @s @e[tag=blackstone_labyrinth,limit=1]
execute if score @s randomroll matches 3 run tp @s @e[tag=kings_keep,limit=1]
execute if score @s randomroll matches 4 run tp @s @e[tag=nether_fortress,limit=1]