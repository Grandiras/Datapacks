scoreboard objectives add timer dummy
scoreboard objectives add random_number dummy
scoreboard objectives add stones_mined mined:stone
scoreboard objectives add mined_with_hammer used:mace
scoreboard objectives add mined_with_excavator used:netherite_shovel

# clear the advancements to prevent malfunction
advancement revoke @s only global:shrink_stick/activated

# schedule a function that broadcasts a message to all players every 60 mins (first run in 3 mins)
schedule function server:core/announce 180s

# we're finished
tellraw @a {"text":"[Server] ","color":"gold","extra":[{"text":"Reloaded!","color":"green"}]}