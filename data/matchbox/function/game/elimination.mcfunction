effect clear @s resistance

execute as @s[tag=marked,tag=!out] run gamemode spectator
execute as @a at @s run playsound matchbox:ignited master @s
execute as @s[tag=marked,tag=!out] run title @s title {"text":"You have been Ignited!","color":"red"}
execute as @s[tag=marked,tag=!out] run title @a[tag=!out,tag=!marked] title [{"selector":"@a[tag=!out,gamemode=spectator]","color":"red"},{"text":" was Ignited!","color":"dark_red"}]
execute as @a[tag=marked,tag=!out] run scoreboard players remove #matches matches 1
tag @s add out
tag @s remove marked
scoreboard players set #marked marked 0

# Check amount of matches vs amount of sparks
execute if score #sparks sparks >= #matches matches run function matchbox:game/reset
execute if score #sparks sparks < #matches matches run function matchbox:meeting/meeting