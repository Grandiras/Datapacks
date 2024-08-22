scoreboard players set @s ray_distance 0

# get the player's reach distance
execute store result score @s player_reach run data get entity @s attributes[{id:"minecraft:player.block_interaction_range"}].base 10

execute as @s at @s anchored eyes positioned ^ ^ ^ anchored feet run function raycasting:cast_ray