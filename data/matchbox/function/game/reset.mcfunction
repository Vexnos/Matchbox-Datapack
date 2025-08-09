# Remove all Roles
tag @a remove spark
tag @a remove medic
tag @a remove match

# Reset Scoreboards
scoreboard players set #countdown countdown 0
scoreboard players reset #sparks sparks
scoreboard players reset #matches matches

# Clear Effects
effect clear @a blindness
effect clear @a slowness

# Clear Inventories
clear @a