# store the current player's id in the temporary storage
execute as @s run function player_id:store_player_id

execute as @s run function grandiras:server/hammer/check_for_armor_stand with storage player_id