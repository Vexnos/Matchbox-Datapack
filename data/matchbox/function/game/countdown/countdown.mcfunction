# Countdown Logic
execute if score #countdown countdown matches 4.. run title @a title {"score":{"objective":"countdown","name":"#countdown"},"color":"dark_green"}
execute if score #countdown countdown matches 3 run title @a title {"score":{"objective":"countdown","name":"#countdown"},"color":"green"}
execute if score #countdown countdown matches 2 run title @a title {"score":{"objective":"countdown","name":"#countdown"},"color":"yellow"}
execute if score #countdown countdown matches 1 run title @a title {"score":{"objective":"countdown","name":"#countdown"},"color":"red"}
execute if score #countdown countdown matches 1.. run scoreboard players remove #countdown countdown 1

# Sound
execute as @a at @s run playsound ui.button.click master @s

# Schedules
execute if score #countdown countdown matches 1.. run schedule function matchbox:game/countdown/countdown 2s
execute if score #countdown countdown matches 0 run schedule function matchbox:game/countdown/youare 2s