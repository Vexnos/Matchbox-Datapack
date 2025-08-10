# Set the Game State
scoreboard players set #game gameRunning 0

# Teleport Back to Lobby
gamemode adventure @a
effect clear @a
tp @a @e[tag=lobby,limit=1]

# Victory Check
execute if score #sparks sparks >= #matches matches run title @a title {"text":"The Spark has eliminate all matches!","color":"red"}
execute as @a at @s if score #sparks sparks >= #matches matches run playsound entity.ender_dragon.growl master @s
execute if score #sparks sparks < #matches matches run title @a title {"text":"The Spark has been voted out!","color":"green"}
execute as @a at @s if score #sparks sparks < #matches matches run playsound ui.toast.challenge_complete master @s

# Remove all Roles
tag @a remove spark
tag @a remove splash
tag @a remove match
tag @a remove out

# Remove Statuses
tag @a remove marked
tag @a remove protected

# Reset Scoreboards
scoreboard players set @a randomroll 0
scoreboard players set @a deaths 0
scoreboard players set @a crossbowUsed 0
scoreboard players set #countdown countdown 0
scoreboard players reset #sparks sparks
scoreboard players reset #matches matches
scoreboard players set #marked marked 0

tag @a remove swap2
kill @e[tag=aswap2]
kill @e[tag=aswap1]

# Clear Effects
effect clear @a blindness
effect clear @a slowness

# Clear Inventories
clear @a

schedule clear matchbox:round/end
schedule clear matchbox:round/start
schedule clear matchbox:roles/items
schedule clear matchbox:round/blindness
schedule clear matchbox:game/countdown/countdown
schedule clear matchbox:game/meeting
schedule clear matchbox:game/vote