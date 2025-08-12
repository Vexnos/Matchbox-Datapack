function matchbox:round/blindness
scoreboard players reset *
execute as @a[tag=!out] run function gui.maker:username
give @a[tag=!out] barrier[item_name='"Skip Vote"',food={nutrition:0,saturation:0,can_always_eat:true,eat_seconds:999999}] 1
schedule function matchbox:meeting/election 15s
