# check if the hammer was used
execute unless score @s mined_with_hammer matches 1.. run return fail

# check if it was actually a hammer and not e.g. a mace
execute unless data entity @s SelectedItem.components."minecraft:custom_data".is_hammer run return run scoreboard players set @s mined_with_hammer 0

# get the ray hit armor stand for the player and mine the chunk at it's position
execute store result score hammer_current player_id run scoreboard players get @s player_id
execute as @e[type=armor_stand,tag=ray_hit] if score @s player_id = hammer_current player_id as @s at @s positioned ~ ~ ~ run function grandiras:server/hammer/mine_chunk

# reset the score
scoreboard players set @s mined_with_hammer 0