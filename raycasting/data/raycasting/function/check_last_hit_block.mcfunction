# Check if the current player's ray hit armor stand's block is replaced by a #ray_pass block
execute unless block ~ ~ ~ #raycasting:ray_pass run return fail

execute as @e[type=armor_stand,tag=last_block_mined] if score @s player_id = current player_id run return run tp @s ^ ^ ^
execute as @s run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Small:1b,NoGravity:1b,Invulnerable:1b,Tags:["last_block_mined"]}
execute as @e[type=armor_stand,tag=last_block_mined] unless score @s player_id matches 1.. run scoreboard players operation @s player_id = current player_id

scoreboard players set current last_hit_block_mined 1