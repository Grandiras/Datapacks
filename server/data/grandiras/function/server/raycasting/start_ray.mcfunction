scoreboard players set @s ray_distance 0
scoreboard players set @s ray_hit 0

kill @e[type=armor_stand,tag=ray_hit,limit=1,sort=nearest]

execute as @s at @s anchored eyes positioned ^ ^ ^ anchored feet run function grandiras:server/raycasting/cast_ray