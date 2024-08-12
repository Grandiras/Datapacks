tellraw @a {"text":"[Server] ","color":"gold","extra":[{"text":"Reloading server...","color":"yellow"}]}

scoreboard objectives add timer dummy
scoreboard objectives add crab_claw_active dummy
scoreboard objectives add random_number dummy
scoreboard objectives add stones_mined minecraft.mined:minecraft.stone
scoreboard objectives add ray_distance dummy

# Clear the advancements to prevent malfunction
advancement revoke @s only global:shrink_stick/activated
advancement revoke @s only global:excavator/activated

# schedule a function that broadcasts a message to all players every 30 mins
schedule function grandiras:server/announce 180s

tellraw @a {"text":"[Server] ","color":"gold","extra":[{"text":"Server reloaded!","color":"green"}]}