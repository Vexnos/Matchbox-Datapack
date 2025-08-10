# Check amount of matches vs amount of sparks
execute if score #sparks sparks >= #matches matches run function matchbox:game/reset

# Teleport Players to Random Locations
execute as @a[gamemode=adventure,tag=!out] run function matchbox:game/randspawn

# Give Role Specific Items
schedule function matchbox:roles/items 10s

# Titles and Sounds
execute as @a at @s run playsound entity.player.teleport master @s

# Invis and Armour
effect give @a invisibility infinite 0 true
item replace entity @a[tag=!out,gamemode=adventure] armor.head with leather_helmet[unbreakable={},enchantments={levels:{binding_curse:1}}]
item replace entity @a[tag=!out,gamemode=adventure] armor.chest with leather_chestplate[unbreakable={},enchantments={levels:{binding_curse:1}}]
item replace entity @a[tag=!out,gamemode=adventure] armor.legs with leather_leggings[unbreakable={},enchantments={levels:{binding_curse:1}}]
item replace entity @a[tag=!out,gamemode=adventure] armor.feet with leather_boots[unbreakable={},enchantments={levels:{binding_curse:1}}]

# Start Round Timer