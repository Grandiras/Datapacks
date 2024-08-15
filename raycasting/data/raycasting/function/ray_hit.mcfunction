scoreboard players set @s ray_hit 1

# store the current player's id in the temporary storage
execute as @s run function player_id:store_player_id

# summon an armor stand at the ray hit position tagged with the player's id
function raycasting:summon_armor_stand with storage player_id