# Set the Game State
scoreboard players set #inRound inRound 0

# Remove all Signs
fill 34 8 427 -235 111 149 air replace oak_sign
fill 34 8 427 -235 111 149 air replace oak_wall_sign

# Fill Lava because people keep breaking the map
fill -86 25 203 -122 25 167 lava[level=0] replace lava
fill -86 25 203 -122 25 167 lava[level=0] replace air

schedule clear matchbox:round/end
schedule clear matchbox:roles/items
schedule clear matchbox:round/blindness
schedule clear matchbox:swap/items

# Elimination
execute if score #marked marked matches 0 run function matchbox:game/nokill
execute as @a[tag=marked,tag=!protected,tag=!spark] run function matchbox:game/elimination
execute as @a[tag=marked,tag=protected,tag=!spark] run function matchbox:game/protected