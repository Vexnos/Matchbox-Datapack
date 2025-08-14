function matchbox:round/blindness
schedule clear matchbox:meeting/vote

execute as @a at @s run playsound matchbox:votingtime master @s

# TP players to Voting Booths
tp @a[tag=!out,tag=player1] @e[tag=player1v,limit=1]
tp @a[tag=!out,tag=player2] @e[tag=player2v,limit=1]
tp @a[tag=!out,tag=player3] @e[tag=player3v,limit=1]
tp @a[tag=!out,tag=player4] @e[tag=player4v,limit=1]
tp @a[tag=!out,tag=player5] @e[tag=player5v,limit=1]
tp @a[tag=!out,tag=player6] @e[tag=player6v,limit=1]
tp @a[tag=!out,tag=player7] @e[tag=player7v,limit=1]
tp @a[tag=!out,tag=player8] @e[tag=player8v,limit=1]

scoreboard players set #inMeeting inMeeting 0
scoreboard players set #inVoting inVoting 1
scoreboard players reset * vote
execute as @a[tag=!out] run function gui.maker:username
give @a[tag=!out] barrier[item_name='"Skip Vote"',food={nutrition:0,saturation:0,can_always_eat:true,eat_seconds:999999}] 1
schedule function matchbox:meeting/election 15s
