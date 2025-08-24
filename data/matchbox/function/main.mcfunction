# Effects for all players
effect give @a saturation infinite 0 true
effect give @a resistance infinite 4 true
effect give @a weakness infinite 9 true

# Stop Players Dropping Items
execute if score #inRound inRound matches 1 as @e[type=item] at @s on origin run data modify entity @e[type=item,sort=nearest,limit=1] Owner set from entity @s UUID
execute if score #inRound inRound matches 1 as @e[type=item] run data modify entity @s PickupDelay set value 0s
execute if score #inRound inRound matches 1 as @e[type=item] at @s on origin run tp @e[type=item,sort=nearest,limit=1] @s

# Set XP to 0 so players can't break Anvils
xp set @a 0 levels
xp set @a 0 points

# Kill All Items
kill @e[type=item,nbt={Item:{id:"minecraft:player_head"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:barrier"}}]
kill @e[type=spectral_arrow,nbt={inGround:1b}]

# Timers
execute store result bossbar timer value run scoreboard players get #timer timer
execute store result bossbar meeting_timer value run scoreboard players get #meeting timer
execute store result bossbar voting_timer value run scoreboard players get #voting timer

scoreboard players enable @a[tag=admin] start
execute as @a if score @s start matches 1.. run function matchbox:game/start

scoreboard players enable @a[tag=admin] reset
execute as @a if score @s reset matches 1.. run function matchbox:game/reset

# Spectral Arrow
function matchbox:game/spectralarrow