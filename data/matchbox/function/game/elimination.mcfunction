effect clear @s resistance
damage @s 999999 minecraft:out_of_world

execute as @s[scores={deaths=1..},tag=!out] run gamemode spectator
execute as @a at @s run playsound matchbox:ignited master @s
execute as @s[scores={deaths=1..},tag=!out] run title @s title {"text":"You have been Ignited!","color":"red"}
execute as @s[scores={deaths=1..},tag=!out] run title @a[tag=!out,scores={deaths=0}] title [{"selector":"@a[tag=!out,gamemode=spectator]","color":"red"},{"text":" was Ignited!","color":"dark_red"}]
execute as @a[scores={deaths=1..},tag=!out] run scoreboard players remove #matches matches 1
scoreboard players set @s deaths 0
tag @s add out
tag @s remove marked
scoreboard players set #marked marked 0

# Check amount of matches vs amount of sparks
execute if score #sparks sparks >= #matches matches run schedule function matchbox:game/reset 3s
execute if score #sparks sparks < #matches matches run schedule function matchbox:meeting/meeting 3s