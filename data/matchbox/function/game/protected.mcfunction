tellraw @s {"text":"You were marked, but you were protected","color":"blue"}
execute as @a[tag=protected,tag=marked] at @s run playsound entity.allay.ambient_without_item master @s ~ ~ ~ 100 0

tag @s remove protected
tag @s remove marked