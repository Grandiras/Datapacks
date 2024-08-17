scoreboard players add available_id player_id 1

execute as @a if score available_id player_id = @s player_id run function player_id:reset_available_id