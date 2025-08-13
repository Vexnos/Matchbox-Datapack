advancement revoke @s only matchbox:splash

execute at @s[tag=splash] as @a[tag=!splash,sort=nearest,limit=1,distance=..2] run tag @s add protected
execute as @a[tag=protected] run clear @a[tag=splash,sort=nearest,limit=1] blue_dye
execute as @a[tag=protected] run tellraw @a[tag=splash,limit=1,sort=nearest] {"text":"Your target has been marked.","color":"blue"}

execute as @s[tag=splash] at @a[tag=!splash,sort=nearest,limit=1,distance=3..] run tellraw @s[tag=splash] {"text":"You must be within 2 blocks of your target!","color":"red"}
execute as @s[tag=splash] at @a[tag=!splash,sort=nearest,limit=1,distance=3..] run playsound entity.player.teleport master @s[tag=splash] ~ ~ ~ 100 0