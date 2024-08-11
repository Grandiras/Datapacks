# if user is already small, make them normal size
execute as @s[nbt={attributes:[{id:"minecraft:generic.scale",base:0.2d}]}] run return run attribute @s generic.scale base set 1.0

# if user is normal size, make them small
execute as @s[nbt={attributes:[{id:"minecraft:generic.scale",base:1.0d}]}] run return run attribute @s generic.scale base set 0.2

# user has no scale attribute, make them small
execute as @s run return run function grandiras:server/shrink_stick_big_to_small with entity @s