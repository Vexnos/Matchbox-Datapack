# Role Specific Items
item replace entity @a[tag=spark] hotbar.6 with gold_nugget[custom_model_data={strings:["spark_marker"]},custom_name={text:"Mark",italic:false,color:"red"},consumable={consume_seconds:999999,has_consume_particles:false,animation:eat}] 1
item replace entity @a[tag=splash,tag=!out] hotbar.6 with blue_dye[custom_model_data={strings:["medic_marker"]},custom_name={text:"Splash",italic:false,color:"blue"},consumable={consume_seconds:999999,has_consume_particles:false,animation:eat}] 1
execute as @a[tag=spark] at @s run playsound matchbox:items master @s
execute as @a[tag=splash] at @s run playsound matchbox:items master @s
