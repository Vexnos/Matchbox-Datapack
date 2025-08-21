gamemode spectator @s
tag @s add out
execute as @s[tag=match] run scoreboard players remove #matches matches 1
execute as @s[tag=splash] run scoreboard players remove #matches matches 1
execute as @s[tag=spark] run scoreboard players remove #sparks sparks 1
title @a title [{"selector":"@s","color":"gold"},{"text":" was voted!","color":"dark_green"}]
execute if score @s vote matches 1 run title @a subtitle [{"text":"With ","color":"dark_green"},{"score":{"name":"@s","objective":"vote"},"color":"gold"},{"text":" vote","color":"dark_green"}]
execute if score @s vote matches 2.. run title @a subtitle [{"text":"With ","color":"dark_green"},{"score":{"name":"@s","objective":"vote"},"color":"gold"},{"text":" votes","color":"dark_green"}]
execute as @a at @s run playsound matchbox:voted master @s