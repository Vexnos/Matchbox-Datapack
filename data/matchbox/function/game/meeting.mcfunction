teleport @a @e[tag=meeting,limit=1]
effect clear @a[tag=!out] blindness
effect clear @a[tag=!out] slowness

# Schedule the Next Round
schedule function matchbox:game/vote 180s