# Store the current player's ID in a temporary scoreboard to identify which player's ray hit a block

# If this player already has a ray hit armor stand in the world, teleport it to the new hit position
# This reuses existing entities rather than creating new ones each time
execute as @e[type=armor_stand,tag=ray_hit] if score @s player_id = current player_id run return run tp @s ^ ^ ^

# If no existing armor stand was found for this player, summon a new one at the hit position
# This armor stand is invisible, doesn't have collision, and won't be affected by gravity
execute as @s run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Small:1b,NoGravity:1b,Invulnerable:1b,Tags:["ray_hit"]}

# Assign the player's ID to the newly created armor stand
# This creates a link between the player and their ray hit marker
execute as @e[type=armor_stand,tag=ray_hit] unless score @s player_id matches 1.. run scoreboard players operation @s player_id = current player_id