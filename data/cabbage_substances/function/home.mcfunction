particle minecraft:reverse_portal ~ ~0.5 ~ 0 0 0 1.5 150 force @a
playsound minecraft:entity.enderman.teleport master @a[distance=..20] ~ ~ ~ 2
title @s actionbar [{"translate":"recall.home"},{"selector": "@s","color":"gold"}]
data modify storage cabbage_substances:spawnpoint SpawnX set from entity @s respawn.pos[0]
data modify storage cabbage_substances:spawnpoint SpawnY set from entity @s respawn.pos[1]
data modify storage cabbage_substances:spawnpoint SpawnZ set from entity @s respawn.pos[2]
execute unless data entity @s respawn.dimension run data modify storage cabbage_substances:spawnpoint SpawnDim set value 'minecraft:overworld'
data modify storage cabbage_substances:spawnpoint SpawnDim set from entity @s respawn.dimension
function cabbage_substances:tp with storage cabbage_substances:spawnpoint