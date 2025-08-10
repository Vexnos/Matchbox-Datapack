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

# Spectral Arrow
function matchbox:game/spectralarrow