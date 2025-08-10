effect clear @s resistance
damage @s 999999 minecraft:out_of_world

execute as @s[scores={deaths=1..},tag=!out] run gamemode spectator
execute as @a at @s run playsound entity.lightning_bolt.impact master @s
execute as @s[scores={deaths=1..},tag=!out] run tellraw @s {"text":"You have been eliminated!","color":"red"}
execute as @s[scores={deaths=1..},tag=!out] run tellraw @a[tag=!out,scores={deaths=0}] [{"selector":"@a[tag=!out,gamemode=spectator]","color":"red"},{"text":" was Eliminated!","color":"gray"}]
scoreboard players set @s deaths 0
tag @s add out
tag @s remove marked