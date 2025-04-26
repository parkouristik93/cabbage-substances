$execute in $(SpawnDim) positioned $(SpawnX) $(SpawnY) $(SpawnZ) run tp @s ~ ~ ~ 
$execute in $(SpawnDim) positioned $(SpawnX) $(SpawnY) $(SpawnZ) run particle minecraft:portal ~ ~0.5 ~ 0 0 0 1.5 150 force @a
playsound minecraft:entity.enderman.teleport master @a[distance=..20] ~ ~ ~ 2
data remove storage cabbage_substances:spawnpoint SpawnX
data remove storage cabbage_substances:spawnpoint SpawnY
data remove storage cabbage_substances:spawnpoint SpawnZ
data remove storage cabbage_substances:spawnpoint SpawnDim