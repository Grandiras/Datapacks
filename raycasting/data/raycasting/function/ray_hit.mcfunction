scoreboard players set @s ray_hit 1

# summon an armor stand at the ray hit position tagged with the player's id
scoreboard players operation current player_id = @s player_id
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,Tags:["ray_hit"]}
execute as @e[type=armor_stand,tag=ray_hit] unless score @s player_id matches 1.. run scoreboard players operation @s player_id = current player_id