particle minecraft:reverse_portal ~ ~1 ~ 0 0 0 1.5 150 force @a
scoreboard objectives add SpawnX dummy
scoreboard objectives add SpawnY dummy
scoreboard objectives add SpawnZ dummy
scoreboard objectives add SpawnDim dummy
execute store result score @s SpawnX run data get entity @s SpawnX
execute store result score @s SpawnY run data get entity @s SpawnY
execute store result score @s SpawnZ run data get entity @s SpawnZ
execute store result score @s SpawnDim run data get entity @s SpawnDimension
data modify storage cabbage_substances:spawnpoint input.SpawnX set from entity @s SpawnX
data modify storage cabbage_substances:spawnpoint input.SpawnY set from entity @s SpawnY
data modify storage cabbage_substances:spawnpoint input.SpawnZ set from entity @s SpawnZ
data modify storage cabbage_substances:spawnpoint input.SpawnDim set from entity @s SpawnDimension
execute if score @s SpawnX matches 0 if score @s SpawnY matches 0 if score @s SpawnZ matches 0 if score @s SpawnDim matches 0 run function cabbage_substances:define_spawn
function cabbage_substances:tp with storage cabbage_substances:spawnpoint input
scoreboard objectives remove SpawnX
scoreboard objectives remove SpawnY
scoreboard objectives remove SpawnZ
scoreboard objectives remove SpawnDim
data remove storage cabbage_substances:spawnpoint input