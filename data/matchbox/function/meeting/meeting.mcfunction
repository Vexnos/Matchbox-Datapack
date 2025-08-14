# Teleport Players
tp @a[tag=player1] @e[tag=player1m,limit=1]
tp @a[tag=player2] @e[tag=player2m,limit=1]
tp @a[tag=player3] @e[tag=player3m,limit=1]
tp @a[tag=player4] @e[tag=player4m,limit=1]
tp @a[tag=player5] @e[tag=player5m,limit=1]
tp @a[tag=player6] @e[tag=player6m,limit=1]
tp @a[tag=player7] @e[tag=player7m,limit=1]
tp @a[tag=player8] @e[tag=player8m,limit=1]

effect clear @a[tag=!out] blindness
effect clear @a invisibility
clear @a leather_helmet
stopsound @a * matchbox:roundend
schedule function matchbox:meeting/vote 210s

scoreboard players set #inMeeting inMeeting 1