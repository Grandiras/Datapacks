# Lazy updating is intended to reduce the number of times the server has to check for updates (5 times per second instead of 20 times per second)
scoreboard players add @a timer 1
execute as @a if score @s timer matches 4.. run function grandiras:server/core/lazy_update

execute as @a run function grandiras:server/hammer/check_use