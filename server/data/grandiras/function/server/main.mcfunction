scoreboard players add @a timer 1
execute as @a if score @s timer matches 4.. run advancement revoke @s only global:shrink_stick/activated
execute as @a if score @s timer matches 4.. run scoreboard players set @s timer 0

# check if the crab claw is in the offhand
execute as @a if data entity @s Inventory[{Slot:-106b}].components.minecraft:custom_data.crab_claw run function grandiras:server/crab_claw/activate
execute as @a unless data entity @s Inventory[{Slot:-106b}].components.minecraft:custom_data.crab_claw run function grandiras:server/crab_claw/disable