title @a title {"text":"No one was ignited","color":"dark_green"}
execute as @a at @s run playsound matchbox:jingle master @s

# Check amount of matches vs amount of sparks
execute if score #sparks sparks >= #matches matches run function matchbox:game/reset
execute if score #sparks sparks < #matches matches run schedule function matchbox:meeting/meeting 3s