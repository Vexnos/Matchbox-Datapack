# Check for entites with glowing
execute if score #inRound inRound matches 1 as @a if entity @s[nbt={active_effects:[{id:"minecraft:glowing"}]}] run effect clear @s invisibility
execute if score #inRound inRound matches 1 as @a if entity @s[nbt=!{active_effects:[{id:"minecraft:glowing"}]}] run effect give @s invisibility infinite 0 true