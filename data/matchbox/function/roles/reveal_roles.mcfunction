# Reveal Spark
title @a[tag=spark] title {"text":"The Spark","color":"red"}
tellraw @a[tag=spark] [{"text":"You are the","color":"gray"},{"text":" Spark","color":"red"},{"text":". You must mark one player per round to kill them, they die at the end of the round. If you mark a player who was protected by the","color":"gray"},{"text":" Splash","color":"blue"},{"text":", they will not die and will know if they were marked.","color":"gray"}]
execute as @a[tag=spark] at @s run playsound entity.ender_dragon.growl master @s

# Reveal Splash
title @a[tag=splash] title {"text":"The Splash","color":"blue"}
tellraw @a[tag=splash] [{"text":"You are the","color":"gray"},{"text":" Splash","color":"blue"},{"text":". You can choose one player to protect from the Spark per round, if they get marked by the"},{"text":" Spark ","color":"red"},{"text":"and you protect them, only they [the player who was marked] will know if they were marked by the Spark, you will not. A player will not know if you protect them. You cannot protect yourself.","color":"gray"}]
execute as @a[tag=splash] at @s run playsound entity.allay.ambient_without_item master @s

# Reveal Matches
title @a[tag=match] title {"text":"A Match","color":"yellow"}
tellraw @a[tag=match] [{"text":"You are a","color":"gray"},{"text":" Match","color":"yellow"},{"text":". You must uncover the","color":"gray"},{"text":" Spark ","color":"red"},{"text":"by using your reasoning, wit and social deduction while surviving to vote out the Spark.","color":"gray"}]
execute as @a[tag=match] at @s run playsound entity.villager.ambient master @s

# Clear Temporary Blindness
effect clear @a blindness

# Give Items
function matchbox:game/items

# Start the Round
function matchbox:round/start