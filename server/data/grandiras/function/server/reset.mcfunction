scoreboard objectives add timer dummy
scoreboard objectives add random_number dummy
scoreboard objectives add stones_mined mined:stone
scoreboard objectives add mined_with_hammer used:mace
scoreboard objectives add ray_distance dummy
scoreboard objectives add ray_hit dummy

# Clear the advancements to prevent malfunction
advancement revoke @s only global:shrink_stick/activated

# kill all armor stands with the tag ray_hit
kill @e[type=armor_stand,tag=ray_hit]

# schedule a function that broadcasts a message to all players every 30 mins
schedule function grandiras:server/announce 180s

tellraw @a {"text":"[Server] ","color":"gold","extra":[{"text":"Server datapack reloaded!","color":"green"}]}