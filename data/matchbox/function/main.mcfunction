# Effects for all players
effect give @a saturation infinite 0 true
effect give @a resistance infinite 4 true
effect give @a weakness infinite 9 true

# Stop Players Dropping Items
execute if score #game gameRunning matches 1 as @e[type=item] at @s on origin run data modify entity @e[type=item,sort=nearest,limit=1] Owner set from entity @s UUID
execute if score #game gameRunning matches 1 as @e[type=item] run data modify entity @s PickupDelay set value 0s
execute if score #game gameRunning matches 1 as @e[type=item] at @s on origin run tp @e[type=item,sort=nearest,limit=1] @s

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

# Spectral Arrow
function matchbox:game/spectralarrow