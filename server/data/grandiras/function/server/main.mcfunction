scoreboard players add @a timer 1

execute as @a if score @s timer matches 4.. run advancement revoke @s only global:shrink_stick/activated
execute as @a if score @s timer matches 4.. run scoreboard players set @s timer 0