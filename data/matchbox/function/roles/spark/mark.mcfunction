advancement revoke @s only matchbox:mark

execute at @s[tag=spark] as @a[tag=!out,tag=!spark,sort=nearest,limit=1,distance=..2] run tag @s add marked
execute as @a[tag=marked] run clear @a[tag=!out,tag=spark,sort=nearest,limit=1] gold_nugget
execute as @a[tag=marked] run title @a[tag=!out,tag=spark,limit=1,sort=nearest] actionbar {"text":"Your target has been marked.","color":"dark_red"}
execute as @a[tag=marked] run execute as @a[tag=spark] at @s run playsound matchbox:marked master @s
execute as @a[tag=marked] run scoreboard players add #marked marked 1

execute unless entity @a[tag=!spark,tag=marked] as @s[tag=spark] at @a[tag=!out,tag=!spark,sort=nearest,limit=1,distance=3..] run title @s[tag=spark] actionbar {"text":"You must be within 2 blocks of your target!","color":"red"}
execute unless entity @a[tag=!spark,tag=marked] as @s[tag=spark] at @a[tag=!out,tag=!spark,sort=nearest,limit=1,distance=3..] run playsound entity.player.teleport master @s[tag=spark] ~ ~ ~ 100 0