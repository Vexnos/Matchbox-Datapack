advancement revoke @s only matchbox:mark

execute at @s[tag=spark] as @a[tag=!spark,sort=nearest,limit=1,distance=..2] run tag @s add marked
execute as @a[tag=marked] run clear @a[tag=spark,sort=nearest,limit=1] gold_nugget
execute as @a[tag=marked] run tellraw @a[tag=spark,limit=1,sort=nearest] [{"selector":"@a[tag=marked,sort=nearest,limit=1]","color":"red"},{"text":" has been marked.","color":"gray"}]
execute as @a[tag=marked] run scoreboard players add #marked marked 1

execute as @s[tag=spark] at @a[tag=!spark,sort=nearest,limit=1,distance=3..] run tellraw @s[tag=spark] {"text":"You must be within 2 blocks of your target!","color":"red"}
execute as @s[tag=spark] at @a[tag=!spark,sort=nearest,limit=1,distance=3..] run playsound entity.player.teleport master @s[tag=spark] ~ ~ ~ 100 0