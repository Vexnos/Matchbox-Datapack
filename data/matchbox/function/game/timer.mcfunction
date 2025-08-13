execute if score #inRound inRound matches 1 run scoreboard players remove #timer timer 1
execute if score #inMeeting inMeeting matches 1 run scoreboard players remove #meeting timer 1
execute if score #inVoting inVoting matches 1 run scoreboard players remove #voting timer 1

execute if score #inRound inRound matches 1 run bossbar set minecraft:timer players @a
execute if score #inRound inRound matches 1 run bossbar set minecraft:timer visible true
execute if score #inRound inRound matches 0 run bossbar set minecraft:timer visible false

execute if score #inMeeting inMeeting matches 1 run bossbar set minecraft:meeting_timer players @a
execute if score #inMeeting inMeeting matches 1 run bossbar set minecraft:meeting_timer visible true
execute if score #inMeeting inMeeting matches 0 run bossbar set minecraft:meeting_timer visible false

execute if score #inVoting inVoting matches 1 run bossbar set minecraft:voting_timer players @a
execute if score #inVoting inVoting matches 1 run bossbar set minecraft:voting_timer visible true
execute if score #inVoting inVoting matches ..0 run bossbar set minecraft:voting_timer visible false

execute if score #inVoting inVoting matches 1 if score #voting timer matches 1.. as @a at @s run playsound ui.button.click master @s

schedule function matchbox:game/timer 1s