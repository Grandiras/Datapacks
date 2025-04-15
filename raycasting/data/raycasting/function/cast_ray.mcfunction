# If the current block is not in our list of passable blocks, we've hit a solid block
execute unless block ~ ~ ~ #raycasting:ray_pass run return run function raycasting:ray_hit

# Progress the ray distance counter by 1 (representing 0.05 blocks)
# This tracks how far the ray has traveled so far
scoreboard players add @s ray_distance 1

# Check if we've exceeded the player's reach distance
# If so, call the ray_failed function to clean up and end the ray
execute if score @s ray_distance > @s player_reach run return run function raycasting:ray_failed

# Continue the ray by recursively calling this function at a position 0.05 blocks forward
# This creates a step-by-step ray path until we hit something or reach maximum distance
execute positioned ^ ^ ^0.05 run function raycasting:cast_ray
