scoreboard players set @s ray_distance 0

# get the player's reach distance
execute store result score @s player_reach run data get entity @s attributes[{id:"minecraft:player.block_interaction_range"}].base 10

# kill the player's current ray hit armor stand
execute store result score clear_current player_id run scoreboard players get @s player_id
execute as @e[type=armor_stand,tag=ray_hit] if score @s player_id = clear_current player_id run kill @s

execute as @s at @s anchored eyes positioned ^ ^ ^ anchored feet run function raycasting:cast_ray