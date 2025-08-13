advancement revoke @s only matchbox:splash

execute at @s[tag=splash] as @a[tag=!out,tag=!splash,sort=nearest,limit=1,distance=..2] run tag @s add protected
execute as @a[tag=protected] run clear @a[tag=!out,tag=splash,sort=nearest,limit=1] blue_dye
execute as @a[tag=protected] run execute as @a[tag=splash] at @s run playsound matchbox:protected master @s
execute as @a[tag=protected] run tellraw @a[tag=splash,limit=1,sort=nearest] {"text":"Your target has been marked.","color":"blue"}

execute as @s[tag=splash] at @a[tag=!out,tag=!splash,sort=nearest,limit=1,distance=3..] run tellraw @s[tag=splash] {"text":"You must be within 2 blocks of your target!","color":"red"}
execute unless entity @a[tag=!out,tag=protected] as @s[tag=splash] at @a[tag=!out,tag=!splash,sort=nearest,limit=1,distance=3..] run give @a[tag=splash,tag=!out] blue_dye[custom_model_data=1,custom_name='{"text":"Splash","italic":false,"color":"blue"}',food={nutrition:0,saturation:0,can_always_eat:true,eat_seconds:0.05}] 1
execute as @s[tag=splash] at @a[tag=!out,tag=!splash,sort=nearest,limit=1,distance=3..] run playsound entity.player.teleport master @s[tag=splash] ~ ~ ~ 100 0