execute unless block ~ ~ ~ air run return run function raycasting:ray_hit

# Progress the ray distance by 0.1 block
scoreboard players add @s ray_distance 1
execute if score @s ray_distance <= @s player_reach positioned ^ ^ ^0.1 run function raycasting:cast_ray

# no block found, if the ray distance is greater than the player's reach, return fail
execute if score @s ray_distance > @s player_reach run return fail