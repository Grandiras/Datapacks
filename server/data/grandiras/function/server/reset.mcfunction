tellraw @a {"text":"[Server] ","color":"gold","extra":[{"text":"Reloading server...","color":"yellow"}]}

scoreboard objectives add timer dummy

advancement revoke @s only global:shrink_stick_activated

tellraw @a {"text":"[Server] ","color":"gold","extra":[{"text":"Server reloaded!","color":"green"}]}