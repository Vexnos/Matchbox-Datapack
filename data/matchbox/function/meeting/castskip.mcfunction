scoreboard players add #Skip vote 1
clear @s player_head
clear @s barrier
tellraw @s {"text":"You have skipped","color":"yellow"}
execute as @s at @s run playsound matchbox:selectvote master @s
advancement revoke @s only matchbox:skip
