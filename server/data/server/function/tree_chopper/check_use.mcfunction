# check if the tree chopper was used
execute unless score @s mined_with_tree_chopper matches 1.. run return fail

# check if it was actually a tree chopper and not e.g. a netherite axe
execute unless data entity @s SelectedItem.components."minecraft:custom_data".is_tree_chopper run return run scoreboard players set @s mined_with_tree_chopper 0

# get the ray hit armor stand for the player and mine the chunk at it's position
execute store result score tree_chopper_current player_id run scoreboard players get @s player_id
execute as @e[type=armor_stand,tag=ray_hit] if score @s player_id = tree_chopper_current player_id as @s at @s positioned ~ ~ ~ run function server:tree_chopper/start_chopping

# reset the score
scoreboard players set @s mined_with_tree_chopper 0