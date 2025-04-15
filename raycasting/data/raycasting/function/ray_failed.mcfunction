# Called when a ray reaches maximum distance without hitting anything

# Find and remove any ray hit armor stand associated with this player
# This cleans up entities when they're no longer needed
execute as @e[type=armor_stand,tag=ray_hit] if score @s player_id = current player_id run kill @s