# Set the Game State
scoreboard players set #game gameRunning 0
scoreboard players set #inRound inRound 0
scoreboard players set #inMeeting inMeeting 0
scoreboard players set #inVoting inVoting 0

# Teleport Back to Lobby
gamemode adventure @a
effect clear @a
tp @a @e[tag=lobby,limit=1]

# Victory Check
execute if score #sparks sparks >= #matches matches run title @a[tag=match] title {"text":"Defeat","color":"red"}
execute if score #sparks sparks >= #matches matches run title @a[tag=splash] title {"text":"Defeat","color":"red"}
execute if score #sparks sparks >= #matches matches run title @a actionbar {"text":"The Spark Lit all the Matches","color":"red"}
execute if score #sparks sparks >= #matches matches run title @a[tag=spark] title {"text":"Victory","color":"red"}
execute as @a at @s if score #sparks sparks >= #matches matches run playsound matchbox:defeat master @s
execute if score #sparks sparks < #matches matches run title @a[tag=match] title {"text":"Victory","color":"aqua"}
execute if score #sparks sparks < #matches matches run title @a[tag=splash] title {"text":"Victory","color":"aqua"}
execute if score #sparks sparks < #matches matches run title @a actionbar {"text":"The Spark was Extinguished","color":"aqua"}
execute if score #sparks sparks < #matches matches run title @a[tag=spark] title {"text":"Defeat","color":"aqua"}
execute as @a at @s if score #sparks sparks < #matches matches run playsound matchbox:victory master @s
title @a subtitle ""

# Remove all Roles
tag @a remove spark
tag @a remove splash
tag @a remove match
tag @a remove out

# Remove Spawn Tags
tag @a remove player1
tag @a remove player2
tag @a remove player3
tag @a remove player4
tag @a remove player5
tag @a remove player6
tag @a remove player7
tag @a remove player8

tag @e remove spawn1
tag @e remove spawn2
tag @e remove spawn3
tag @e remove spawn4
tag @e remove spawn5
tag @e remove spawn6
tag @e remove spawn7
tag @e remove spawn8

# Remove Statuses
tag @a remove marked
tag @a remove protected

# Reset Trigger
scoreboard players reset @s reset

# Reset Scoreboards
scoreboard players set #round round 0
scoreboard players set @a crossbowUsed 0
scoreboard players set #countdown countdown 0
scoreboard players reset #sparks sparks
scoreboard players reset #matches matches
scoreboard players set #marked marked 0
scoreboard players set #timer timer 360
scoreboard players set #meeting timer 210
scoreboard players set #voting timer 15

tag @a remove swap2
kill @e[tag=mswap2]
kill @e[tag=mswap1]

# Clear Effects
effect clear @a blindness
effect clear @a slowness

# Clear Inventories
clear @a

# Remove all Signs
fill 34 8 427 -235 111 149 air replace oak_sign
fill 34 8 427 -235 111 149 air replace oak_wall_sign

# Fill Lava because people keep breaking the map
fill -86 25 203 -122 25 167 lava[level=0] replace lava
fill -86 25 203 -122 25 167 lava[level=0] replace air

time set 6000

schedule clear matchbox:round/end
schedule clear matchbox:round/start
schedule clear matchbox:roles/items
schedule clear matchbox:round/blindness
schedule clear matchbox:game/countdown/countdown
schedule clear matchbox:meeting/meeting
schedule clear matchbox:meeting/vote
schedule clear matchbox:swap/items