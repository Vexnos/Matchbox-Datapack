# Create team for all players
team add players
team modify players nametagVisibility always
team modify players seeFriendlyInvisibles false

# Create Scoreboards
scoreboard objectives add sparks dummy
scoreboard objectives add matches dummy
scoreboard objectives add countdown dummy
scoreboard objectives add randomroll dummy
scoreboard objectives add gameRunning dummy
scoreboard objectives add marked dummy
scoreboard objectives add deaths deathCount
scoreboard objectives add vote dummy
scoreboard objectives add crossbowUsed minecraft.used:minecraft.crossbow

# Scoreboard Values
scoreboard players set @a deaths 0
scoreboard players set @a crossbowUsed 0
scoreboard players set #countdown countdown 0
scoreboard players set @a randomroll 0

execute at @e[tag=lobby,limit=1] run spawnpoint @a ~ ~ ~