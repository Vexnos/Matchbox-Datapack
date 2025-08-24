# Revoke Advancement
advancement revoke @s only matchbox:swap

# Summon Armour Stand at Spark
execute at @s[tag=spark] run summon marker ~ ~ ~ {Tags:['mswap1']}

# Give Tag to Other Player
tag @a[tag=!spark,sort=random,gamemode=!spectator,tag=!out,limit=1] add swap2
execute at @a[tag=swap2] run summon marker ~ ~ ~ {Tags:['mswap2']}

# Swap Players
tp @a[tag=spark] @e[tag=mswap2,limit=1]
tp @a[tag=swap2] @e[tag=mswap1,limit=1]

execute as @a[tag=spark] at @s run playsound matchbox:swap master @s
execute as @a[tag=swap2] at @s run playsound matchbox:swap master @s

# Remove Tags and Kill Armour Stands
tag @a remove swap2
kill @e[tag=mswap2]
kill @e[tag=mswap1]

# Cooldown for Another Swap is 2 Minutes
schedule function matchbox:swap/items 120s