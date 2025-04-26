particle minecraft:reverse_portal ~ ~0.5 ~ 0 0 0 1.5 150 force @a
playsound minecraft:entity.enderman.teleport master @a[distance=..20] ~ ~ ~ 2
title @s actionbar [{"translate":"recall.origin"},{"text":"0 64 0 ","color": "gold"}]
data modify storage cabbage_substances:spawnpoint SpawnX set value 0
data modify storage cabbage_substances:spawnpoint SpawnY set value 64
data modify storage cabbage_substances:spawnpoint SpawnZ set value 0
data modify storage cabbage_substances:spawnpoint SpawnDim set value 'minecraft:overworld'
function cabbage_substances:tp with storage cabbage_substances:spawnpoint