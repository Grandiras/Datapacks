execute unless block ~ ~ ~ air run scoreboard players set @s ray_distance 0
execute unless block ~ ~ ~ air unless data entity @s SelectedItem.components."minecraft:custom_data".is_hammer run return fail
execute unless block ~ ~ ~ air run return run execute positioned ^ ^ ^-0.1 run function grandiras:server/hammer/mine_chunk

# Progress the ray distance by 0.1 block
scoreboard players add @s ray_distance 1
execute if data entity @s Inventory[{Slot:-106b}].components.minecraft:custom_data.is_crab_claw \
        if score @s ray_distance matches ..80 positioned ^ ^ ^0.1 \
        run function grandiras:server/hammer/find_block
execute unless data entity @s Inventory[{Slot:-106b}].components.minecraft:custom_data.is_crab_claw \
        if score @s ray_distance matches ..55 positioned ^ ^ ^0.1 \
        run function grandiras:server/hammer/find_block

# Reset the ray distance if the ray has traveled 70 blocks (no block found)
execute if data entity @s Inventory[{Slot:-106b}].components.minecraft:custom_data.is_crab_claw \
        if score @s ray_distance matches 80.. \
        run return run scoreboard players set @s ray_distance 0
execute unless data entity @s Inventory[{Slot:-106b}].components.minecraft:custom_data.is_crab_claw \
        if score @s ray_distance matches 55.. \
        run return run scoreboard players set @s ray_distance 0