# Assign tags randomly to players
tag @a[sort=random,limit=1,tag=!out,gamemode=adventure] add player1
tag @a[sort=random,limit=1,tag=!out,tag=!player1,gamemode=adventure] add player2
tag @a[sort=random,limit=1,tag=!out,tag=!player1,tag=!player2,gamemode=adventure] add player3
tag @a[sort=random,limit=1,tag=!out,tag=!player1,tag=!player2,tag=!player3,gamemode=adventure] add player4
tag @a[sort=random,limit=1,tag=!out,tag=!player1,tag=!player2,tag=!player3,tag=!player4,gamemode=adventure] add player5
tag @a[sort=random,limit=1,tag=!out,tag=!player1,tag=!player2,tag=!player3,tag=!player4,tag=!player5,gamemode=adventure] add player6
tag @a[sort=random,limit=1,tag=!out,tag=!player1,tag=!player2,tag=!player3,tag=!player4,tag=!player5,tag=!player6,gamemode=adventure] add player7
tag @a[sort=random,limit=1,tag=!out,tag=!player1,tag=!player2,tag=!player3,tag=!player4,tag=!player5,tag=!player6,tag=!player7,gamemode=adventure] add player8

# Assign tags randomly to spawn markers
tag @e[type=marker,sort=random,limit=1,tag=spawn] add spawn1
tag @e[type=marker,sort=random,limit=1,tag=spawn,tag=!spawn1] add spawn2
tag @e[type=marker,sort=random,limit=1,tag=spawn,tag=!spawn1,tag=!spawn2] add spawn3
tag @e[type=marker,sort=random,limit=1,tag=spawn,tag=!spawn1,tag=!spawn2,tag=!spawn3] add spawn4
tag @e[type=marker,sort=random,limit=1,tag=spawn,tag=!spawn1,tag=!spawn2,tag=!spawn3,tag=!spawn4] add spawn5
tag @e[type=marker,sort=random,limit=1,tag=spawn,tag=!spawn1,tag=!spawn2,tag=!spawn3,tag=!spawn4,tag=!spawn5] add spawn6
tag @e[type=marker,sort=random,limit=1,tag=spawn,tag=!spawn1,tag=!spawn2,tag=!spawn3,tag=!spawn4,tag=!spawn5,tag=!spawn6] add spawn7
tag @e[type=marker,sort=random,limit=1,tag=spawn,tag=!spawn1,tag=!spawn2,tag=!spawn3,tag=!spawn4,tag=!spawn5,tag=!spawn6,tag=!spawn7] add spawn8

# Teleport players
tp @a[tag=player1] @e[tag=spawn1,limit=1]
tp @a[tag=player2] @e[tag=spawn2,limit=1]
tp @a[tag=player3] @e[tag=spawn3,limit=1]
tp @a[tag=player4] @e[tag=spawn4,limit=1]
tp @a[tag=player5] @e[tag=spawn5,limit=1]
tp @a[tag=player6] @e[tag=spawn6,limit=1]
tp @a[tag=player7] @e[tag=spawn7,limit=1]
tp @a[tag=player8] @e[tag=spawn8,limit=1]