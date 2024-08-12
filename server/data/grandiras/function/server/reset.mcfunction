tellraw @a {"text":"[Server] ","color":"gold","extra":[{"text":"Reloading server...","color":"yellow"}]}

# Add a timer to implement a delay
scoreboard objectives add timer dummy
# Add a scoreboard to check if the crab claw is active
scoreboard objectives add crab_claw_active dummy

# Clear the advancement to prevent malfunction of the shrink stick
advancement revoke @s only global:shrink_stick/activated

tellraw @a {"text":"[Server] ","color":"gold","extra":[{"text":"Server reloaded!","color":"green"}]}