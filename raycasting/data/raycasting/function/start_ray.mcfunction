scoreboard players set @s ray_distance 0
scoreboard players set @s ray_hit 0
execute store result score @s player_reach run data get entity @s attributes[{id:"minecraft:player.block_interaction_range"}].base 10

kill @e[type=armor_stand,tag=ray_hit,limit=1,sort=nearest]

execute as @s at @s anchored eyes positioned ^ ^ ^ anchored feet run function raycasting:cast_ray