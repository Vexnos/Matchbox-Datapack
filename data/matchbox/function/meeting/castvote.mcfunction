script in vote invoke castvote
clear @s player_head
clear @s barrier
execute as @s at @s run playsound entity.experience_orb.pickup master @s
advancement revoke @s only matchbox:vote
