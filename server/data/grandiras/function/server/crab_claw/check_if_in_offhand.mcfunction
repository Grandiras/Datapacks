# Check if the player has a crab claw in the offhand to extend their reach
execute if data entity @s Inventory[{Slot:-106b}].components.minecraft:custom_data.is_crab_claw run return run attribute @s minecraft:player.block_interaction_range base set 7

# Reset the player's reach if they don't have a crab claw in the offhand
attribute @s minecraft:player.block_interaction_range base set 4.5