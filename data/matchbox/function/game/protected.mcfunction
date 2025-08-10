tellraw @s {"text":"You were marked, but you were protected","color":"blue"}
title @a title {"text":"No one was eliminated","color":"dark_green"}
execute as @a[tag=protected,tag=marked] at @s run playsound entity.allay.ambient_without_item master @s ~ ~ ~ 100 0

tag @s remove protected
tag @s remove marked
scoreboard players set #marked marked 0

# Check amount of matches vs amount of sparks
execute if score #sparks sparks >= #matches matches run function matchbox:game/reset
execute if score #sparks sparks < #matches matches run function matchbox:meeting/meeting