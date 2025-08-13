gamemode spectator @s
tag @s add out
execute as @s[tag=match] run scoreboard players remove #matches matches 1
execute as @s[tag=splash] run scoreboard players remove #matches matches 1
execute as @s[tag=spark] run scoreboard players remove #sparks sparks 1
title @a title [{"selector":"@s","color":"red"},{"text":" was voted!","color":"dark_red"}]
execute as @a at @s run playsound minecraft:entity.lightning_bolt.thunder ambient @s