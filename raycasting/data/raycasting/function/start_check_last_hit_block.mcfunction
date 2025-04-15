scoreboard players set @s last_hit_block_mined 0
execute as @e[type=armor_stand,tag=ray_hit] if score @s player_id = current player_id at @s run return run function raycasting:check_last_hit_block

execute as @s at @s run function raycasting:cleanup_mined_block_armor_stand