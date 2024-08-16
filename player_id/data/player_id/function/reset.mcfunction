scoreboard objectives add player_id dummy

# to prevent malfunction, reset the available_id to the first available id
scoreboard players set available_id player_id 0
function player_id:reset_available_id

tellraw @a {"text":"[Player ID] ","color":"gold","extra":[{"text":"Reloaded!","color":"green"}]}