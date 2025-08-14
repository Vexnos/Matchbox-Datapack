effect give @a[tag=!out] blindness infinite 0 true
execute if score #inRound inRound matches 1 as @a at @s run playsound matchbox:roundend master @s
execute if score #inRound inRound matches 1 run clear @a
item replace entity @a[gamemode=adventure] armor.head with leather_helmet[attribute_modifiers={modifiers:[{amount:-1,id:"speed",operation:add_value,slot:head,type:"minecraft:generic.movement_speed"},{amount:-1,id:"jump",operation:add_value,slot:head,type:"minecraft:generic.jump_strength"}]}]