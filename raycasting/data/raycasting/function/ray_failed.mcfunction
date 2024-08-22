execute store result score current player_id run scoreboard players get @s player_id
execute as @e[type=armor_stand,tag=ray_hit] if score @s player_id = current player_id run kill @s