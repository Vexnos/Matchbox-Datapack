# Create team for all players
team add players
team modify players nametagVisibility always
team modify players seeFriendlyInvisibles false

# Create Scoreboards
scoreboard objectives add sparks dummy
scoreboard objectives add matches dummy
scoreboard objectives add countdown dummy
scoreboard objectives add inRound dummy
scoreboard objectives add gameRunning dummy
scoreboard objectives add marked dummy
scoreboard objectives add deaths deathCount
scoreboard objectives add vote dummy
scoreboard objectives add timer dummy
scoreboard objectives add inMeeting dummy
scoreboard objectives add inVoting dummy
scoreboard objectives add crossbowUsed minecraft.used:minecraft.crossbow

# Scoreboard Values
scoreboard players set @a deaths 0
scoreboard players set @a crossbowUsed 0
scoreboard players set #inMeeting inMeeting 0
scoreboard players set #inVoting inVoting 0
scoreboard players set #countdown countdown 0

# Bossbars
bossbar add timer ""
bossbar add meeting_timer ""
bossbar add voting_timer ""

bossbar set minecraft:timer color yellow
bossbar set minecraft:meeting_timer color yellow
bossbar set minecraft:voting_timer color red

bossbar set minecraft:timer max 600
bossbar set minecraft:meeting_timer max 210
bossbar set minecraft:voting_timer max 15

bossbar set minecraft:timer style notched_10
bossbar set minecraft:meeting_timer style progress
bossbar set minecraft:voting_timer style progress

execute at @e[tag=lobby,limit=1] run spawnpoint @a ~ ~ ~

function matchbox:game/timer
function matchbox:game/newplayers