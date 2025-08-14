script in vote invoke castvote
clear @s player_head
clear @s barrier
execute as @s at @s run playsound matchbox:selectvote master @s
advancement revoke @s only matchbox:vote
