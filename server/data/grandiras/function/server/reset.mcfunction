tellraw @a {"text":"[Server] ","color":"gold","extra":[{"text":"Reloading server...","color":"yellow"}]}

# Add a timer to implement a delay
scoreboard objectives add timer dummy
# Add a scoreboard to check if the crab claw is active
scoreboard objectives add crab_claw_active dummy
# Add a scoreboard to store a random number for the broadcast
scoreboard objectives add random_number dummy
# Add a scoreboard to count the number of stones mined by the player
scoreboard objectives add stones_mined minecraft.mined:minecraft.stone
# Add a scoreboard to store the distance a ray has traveled
scoreboard objectives add ray_distance dummy

# Clear the advancements to prevent malfunction
advancement revoke @s only global:shrink_stick/activated
advancement revoke @s only global:excavator/activated

# schedule a function that broadcasts a message to all players every 30 mins
schedule function grandiras:server/announce 180s

tellraw @a {"text":"[Server] ","color":"gold","extra":[{"text":"Server reloaded!","color":"green"}]}