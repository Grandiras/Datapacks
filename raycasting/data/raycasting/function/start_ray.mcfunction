# Initialize ray distance counter to zero for the current player
scoreboard players set @s ray_distance 0

execute store result score current player_id run scoreboard players get @s player_id

execute as @s at @s run function raycasting:start_check_last_hit_block

# Get the player's block interaction range (reach distance) and multiply by 20 for precision
# This determines the maximum distance the ray can travel
execute store result score @s player_reach run data get entity @s attributes[{id:"minecraft:block_interaction_range"}].base 20

# Position the ray at the player's eye level and start the ray casting process
# The ray will be cast in the direction the player is looking
execute as @s at @s anchored eyes positioned ^ ^ ^ anchored feet run function raycasting:cast_ray