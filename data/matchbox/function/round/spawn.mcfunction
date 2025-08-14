# Set the Game State
scoreboard players set #inRound inRound 1
scoreboard players set #marked marked 0
scoreboard players set #inMeeting inMeeting 0
scoreboard players set #inVoting inVoting 0

scoreboard players set #timer timer 600
scoreboard players set #meeting timer 210
scoreboard players set #voting timer 15

# Increase Round Number
scoreboard players add #round round 1

# Clear Items
clear @a

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

# Give Items
execute as @a[tag=!out,gamemode=adventure] run function matchbox:game/items

# Give Role Specific Items
schedule function matchbox:roles/items 10s
schedule function matchbox:swap/items 120s

# Titles and Sounds
execute if score #round round matches ..1 as @a at @s run playsound block.end_portal.spawn master @s
execute unless score #round round matches ..1 as @a at @s run playsound matchbox:atlarge master @s
execute unless score #round round matches ..1 run title @a title {"text":"The Spark is still at Large","color":"red"}

# Remove Tags
tag @a remove protected
tag @a remove marked

# Remove effects
effect clear @a blindness

# Invis and Armour
effect give @a invisibility infinite 0 true
item replace entity @a[tag=!out,gamemode=adventure] armor.head with leather_helmet[unbreakable={},enchantments={levels:{binding_curse:1}}]
item replace entity @a[tag=!out,gamemode=adventure] armor.chest with leather_chestplate[unbreakable={},enchantments={levels:{binding_curse:1}}]
item replace entity @a[tag=!out,gamemode=adventure] armor.legs with leather_leggings[unbreakable={},enchantments={levels:{binding_curse:1}}]
item replace entity @a[tag=!out,gamemode=adventure] armor.feet with leather_boots[unbreakable={},enchantments={levels:{binding_curse:1}}]

# Teleport Players to Random Locations
function matchbox:game/randspawn

# Blindness in 9 Minutes, 55 Seconds
schedule function matchbox:round/blindness 595s

# Start Round Timer (10 minutes)
schedule function matchbox:round/end 600s