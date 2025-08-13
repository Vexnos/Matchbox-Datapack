advancement revoke @s only matchbox:mark

execute at @s[tag=spark] as @a[tag=!out,tag=!spark,sort=nearest,limit=1,distance=..2] run tag @s add marked
execute as @a[tag=marked] run clear @a[tag=!out,tag=spark,sort=nearest,limit=1] gold_nugget
execute as @a[tag=marked] run tellraw @a[tag=!out,tag=spark,limit=1,sort=nearest] {"text":"Your target has been marked.","color":"dark_red"}
execute as @a[tag=marked] run execute as @a[tag=spark] at @s run playsound matchbox:marked master @s
execute as @a[tag=marked] run scoreboard players add #marked marked 1

execute as @s[tag=spark] at @a[tag=!out,tag=!spark,sort=nearest,limit=1,distance=3..] run tellraw @s[tag=spark] {"text":"You must be within 2 blocks of your target!","color":"red"}
execute unless entity @a[tag=!out,tag=marked] as @s[tag=spark] at @a[tag=!out,tag=!spark,sort=nearest,limit=1,distance=3..] run give @a[tag=spark] gold_nugget[custom_model_data=1,custom_name='{"text":"Mark","italic":false,"color":"red"}',food={nutrition:0,saturation:0,can_always_eat:true,eat_seconds:0.05}] 1
execute as @s[tag=spark] at @a[tag=!out,tag=!spark,sort=nearest,limit=1,distance=3..] run playsound entity.player.teleport master @s[tag=spark] ~ ~ ~ 100 0