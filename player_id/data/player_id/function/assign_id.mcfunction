# set the player's id to player_id_counter (which is the next available id)
execute store result score @s player_id run scoreboard players get available_id player_id

# increment player_id_counter
scoreboard players add available_id player_id 1