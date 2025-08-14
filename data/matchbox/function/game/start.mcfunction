# Pick Roles
tag @a[sort=random,limit=1] add spark
tag @a[sort=random,limit=1,tag=!spark] add splash
tag @a[tag=!spark,tag=!splash] add match

# Add players to scoreboards
execute as @a[tag=spark] run scoreboard players add #sparks sparks 1
execute as @a[tag=!spark] run scoreboard players add #matches matches 1
scoreboard players set @a deaths 0
scoreboard players set #marked marked 0

# Gamemode
gamemode adventure @a
tag @a remove out
clear @a

scoreboard players set #game gameRunning 1

execute as @a at @s run playsound matchbox:jingle3 master @s

# Start Role Reveal Countdown
scoreboard players set #countdown countdown 3
function matchbox:game/countdown/countdown
effect give @a blindness infinite 0 true
item replace entity @a[gamemode=adventure] armor.head with leather_helmet[attribute_modifiers={modifiers:[{amount:-1,id:"speed",operation:add_value,slot:head,type:"minecraft:generic.movement_speed"},{amount:-1,id:"jump",operation:add_value,slot:head,type:"minecraft:generic.jump_strength"}]}]