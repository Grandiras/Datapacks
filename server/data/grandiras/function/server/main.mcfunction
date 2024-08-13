scoreboard players add @a timer 1
execute as @a if score @s timer matches 4.. run advancement revoke @s only global:shrink_stick/activated
execute as @a if score @s timer matches 4.. run scoreboard players set @s timer 0

# check if the crab claw is in the offhand
execute as @a if data entity @s Inventory[{Slot:-106b}].components.minecraft:custom_data.is_crab_claw run attribute @s minecraft:player.block_interaction_range base set 7
execute as @a unless data entity @s Inventory[{Slot:-106b}].components.minecraft:custom_data.is_crab_claw run attribute @s minecraft:player.block_interaction_range base set 4.5

# check if the player has mined 100000 stones to grant the hammer
execute as @a if score @s stones_mined matches 100000.. run advancement grant @s only global:hammer/obtained

# check if the hammer was used
execute as @a if score @s mined_with_hammer matches 1.. if data entity @s SelectedItem.components."minecraft:custom_data".is_hammer run function grandiras:server/hammer/start_mining
scoreboard players set @a mined_with_hammer 0