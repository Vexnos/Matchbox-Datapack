# Set the Game State
scoreboard players set #game gameRunning 0

# Remove all Signs
fill -18 16 -70 147 67 67 air replace oak_sign
fill -18 16 -70 147 67 67 air replace oak_wall_sign

# Clear Items
effect clear @a
clear @a

# Elimination
execute as @a[tag=marked,tag=!protected,tag=!spark] run function matchbox:game/elimination
execute as @a[tag=marked,tag=protected,tag=!spark] run function matchbox:game/protected

schedule clear matchbox:round/end
schedule clear matchbox:roles/items