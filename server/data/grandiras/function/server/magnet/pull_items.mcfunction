# in a radius given by the magnet item, pull items towards the player
execute if data entity @s Inventory[{Slot:-106b}].components.minecraft:custom_data.is_magnet as @s at @s run return run tp @e[type=item,distance=..3] @s
execute if data entity @s Inventory[{Slot:-106b}].components.minecraft:custom_data.is_magnet_second_stage as @s at @s run return run tp @e[type=item,distance=..5] @s
execute if data entity @s Inventory[{Slot:-106b}].components.minecraft:custom_data.is_magnet_third_stage as @s at @s run return run tp @e[type=item,distance=..7] @s