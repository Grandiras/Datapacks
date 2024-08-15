# check for each player if they have a player_id score, if not, give them one (unique to each player)
execute as @a unless score @s player_id matches 1.. run function player_id:assign_id