# Role Specific Items
item replace entity @a[tag=spark] hotbar.6 with gold_nugget[custom_model_data=1,custom_name='{"text":"Mark","italic":false,"color":"red"}',food={nutrition:0,saturation:0,can_always_eat:true,eat_seconds:0.05}] 1
item replace entity @a[tag=splash,tag=!out] hotbar.6 with blue_dye[custom_model_data=1,custom_name='{"text":"Splash","italic":false,"color":"blue"}',food={nutrition:0,saturation:0,can_always_eat:true,eat_seconds:0.05}] 1
execute as @a[tag=spark] at @s run playsound matchbox:items master @s
execute as @a[tag=splash] at @s run playsound matchbox:items master @s
