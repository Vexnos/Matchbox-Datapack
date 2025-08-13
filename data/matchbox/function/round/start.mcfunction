# Check amount of matches vs amount of sparks
execute if score #sparks sparks >= #matches matches run function matchbox:game/reset
execute if score #sparks sparks matches 0 run function matchbox:game/reset

# Teleport Players to Random Locations
execute if score #sparks sparks < #matches matches if score #sparks sparks matches 1.. run function matchbox:round/spawn