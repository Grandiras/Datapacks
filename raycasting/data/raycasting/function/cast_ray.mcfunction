# If the current block is not air, we hit a block
execute unless block ~ ~ ~ #raycasting:ray_hit run return run function raycasting:ray_hit

# Progress the ray distance by 0.1 block
scoreboard players add @s ray_distance 1

# no block found, if the ray distance is greater than the player's reach, return fail, kill the ray hit armor stand and stop the ray
execute if score @s ray_distance > @s player_reach run return run function raycasting:ray_failed

# continue the ray
execute positioned ^ ^ ^0.05 run function raycasting:cast_ray
