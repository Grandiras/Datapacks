# Lazy updating is intended to reduce the number of times the server has to check for updates (5 times per second instead of 20 times per second)
scoreboard players add @a timer 1
execute as @a if score @s timer matches 4.. run function server:core/lazy_update

# For each player, check if they have a shrink stick to award the advancement
execute as @a if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{is_shrink_stick:true}}}]}] run advancement grant @s only global:shrink_stick/obtained
# Same for the hammer
execute as @a if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{is_hammer:true}}}]}] run advancement grant @s only global:hammer/obtained

execute as @a run function server:hammer/check_use