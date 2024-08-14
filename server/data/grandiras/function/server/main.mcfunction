scoreboard players add @a timer 1
execute as @a if score @s timer matches 4.. run advancement revoke @s only global:shrink_stick/activated
execute as @a if score @s timer matches 4.. run scoreboard players set @s timer 0

# check if the crab claw is in the offhand
execute as @a if data entity @s Inventory[{Slot:-106b}].components.minecraft:custom_data.is_crab_claw run attribute @s minecraft:player.block_interaction_range base set 7
execute as @a unless data entity @s Inventory[{Slot:-106b}].components.minecraft:custom_data.is_crab_claw run attribute @s minecraft:player.block_interaction_range base set 4.5

# check if an item (a magnet? is in the offhand) to pull items towards the player
execute as @a if data entity @s Inventory[{Slot:-106b}] run function grandiras:server/magnet/pull_items

# check if the player has mined 100000 stones to grant the hammer
execute as @a if score @s stones_mined matches 100000.. run advancement grant @s only global:hammer/obtained

# check if an ancient debris was dropped onto bedrock to grant the magnet
execute as @e[type=item,nbt={Item:{id:"minecraft:ancient_debris", count:1}, OnGround:1b}] at @s \
        if entity @e[type=item,nbt={Item:{id:"minecraft:ancient_debris"},OnGround:1b},distance=..1] positioned ~ ~ ~ \
        if block ~ ~-1 ~ minecraft:bedrock \
        run function grandiras:server/magnet/obtain
# check if the magnet should be upgraded
execute as @e[type=item,nbt={Item:{id:"minecraft:heavy_core", count:1, components:{"minecraft:custom_data":{is_magnet:true}}},OnGround:1b}] at @s \
        if entity @e[type=item,nbt={Item:{id:"minecraft:obsidian",count:10},OnGround:1b},distance=..1] positioned ~ ~ ~ \
        if block ~ ~-1 ~ minecraft:smithing_table \
        run function grandiras:server/magnet/upgrade_to_5
execute as @e[type=item,nbt={Item:{id:"minecraft:heavy_core", count:1, components:{"minecraft:custom_data":{is_magnet_second_stage:true}}},OnGround:1b}] at @s \
        if entity @e[type=item,nbt={Item:{id:"minecraft:nether_star",count:1},OnGround:1b},distance=..1] positioned ~ ~ ~ \
        if block ~ ~-1 ~ minecraft:vault[ominous=true] \
        run function grandiras:server/magnet/upgrade_to_7

# check if the hammer was used
execute as @a if score @s mined_with_hammer matches 1.. if data entity @s SelectedItem.components."minecraft:custom_data".is_hammer run function grandiras:server/hammer/start_mining
scoreboard players set @a mined_with_hammer 0