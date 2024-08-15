# check if the hammer was used
execute if score @s mined_with_hammer matches 1.. if data entity @s SelectedItem.components."minecraft:custom_data".is_hammer as @s run function grandiras:server/hammer/check_for_player

# reset the score
scoreboard players set @s mined_with_hammer 0