execute unless block ~ ~ ~ air run return run function grandiras:server/raycasting/ray_hit

# Progress the ray distance by 0.1 block
scoreboard players add @s ray_distance 1
execute if score @s ray_distance matches ..75 positioned ^ ^ ^0.1 run function grandiras:server/raycasting/cast_ray

# no block found, if the ray has traveled 7.7 blocks
execute if score @s ray_distance matches 75.. run return fail