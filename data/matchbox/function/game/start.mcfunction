# Pick Roles
tag @a[sort=random,limit=1] add spark
tag @a[sort=random,limit=1,tag=!spark] add medic
tag @a[tag=!spark,tag=!medic] add match

# Add players to scoreboards
execute as @a[tag=spark] run scoreboard players add #sparks sparks 1
execute as @a[tag=!spark] run scoreboard players add #matches matches 1

# Start Role Reveal Countdown
scoreboard players set #countdown countdown 3
function matchbox:game/countdown/countdown
effect give @a blindness infinite 0 true