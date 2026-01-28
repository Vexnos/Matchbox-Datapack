execute unless score #repeats soundRepeats matches ..0 run scoreboard players remove #repeats soundRepeats 1
execute as @a at @s run playsound matchbox:atlarge3 master @s
execute unless score #repeats soundRepeats matches ..0 run schedule function matchbox:game/sound_repeats 3s