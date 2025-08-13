scoreboard players add #Skip vote 1
clear @s player_head
clear @s barrier
execute as @s at @s run playsound entity.experience_orb.pickup master @s
advancement revoke @s only matchbox:skip
