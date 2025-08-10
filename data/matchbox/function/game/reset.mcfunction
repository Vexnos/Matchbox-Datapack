# Teleport Back to Lobby
gamemode adventure @a
effect clear @a
tp @a @e[tag=lobby,limit=1]

# Victory Check
execute if score #sparks sparks >= #matches matches run title @a title {"text":"The Spark has eliminate all matches!","color":"red"}
execute as @a at @s if score #sparks sparks >= #matches matches run playsound entity.evoker.celebrate master @s
execute if score #sparks sparks < #matches matches run title @a title {"text":"The Spark has been voted out!","color":"green"}
execute as @a at @s if score #sparks sparks < #matches matches run playsound entity.villager.celebrate master @s

# Remove all Roles
tag @a remove spark
tag @a remove splash
tag @a remove match
tag @a remove out

# Reset Scoreboards
scoreboard players set @a deaths 0
scoreboard players set @a randomroll 0
scoreboard players set #countdown countdown 0
scoreboard players reset #sparks sparks
scoreboard players reset #matches matches

# Clear Effects
effect clear @a blindness
effect clear @a slowness

# Clear Inventories
clear @a