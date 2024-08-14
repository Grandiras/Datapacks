# if the ray hit a block, but is too far away to reach without the crab claw, return fail (eliminates checks every iteration)
execute if score @s ray_distance matches 50.. unless data entity @s Inventory[{Slot:-106b}].components.minecraft:custom_data.is_crab_claw run return fail

scoreboard players set @s ray_hit 1
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,Tags:["ray_hit"],CustomName:'{"text":"Ray Hit"}'}