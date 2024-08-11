# if user is already small, make them normal size
execute as @s[nbt={attributes:[{id:"minecraft:generic.scale",base:0.2d}]}] run summon area_effect_cloud ~ ~ ~ {Particle:{type:explosion},Radius:1,Duration:2}
execute as @s[nbt={attributes:[{id:"minecraft:generic.scale",base:0.2d}]}] run return run attribute @s generic.scale base set 1.0

# if user is normal size, make them small
execute as @s[nbt={attributes:[{id:"minecraft:generic.scale",base:1.0d}]}] run summon area_effect_cloud ~ ~ ~ {Particle:{type:explosion},Radius:0.5,Duration:2}
execute as @s[nbt={attributes:[{id:"minecraft:generic.scale",base:1.0d}]}] run return run attribute @s generic.scale base set 0.2

# user has no scale attribute, make them small
execute as @s run summon area_effect_cloud ~ ~ ~ {Particle:{type:explosion},Radius:1,Duration:2}
execute as @s run return run attribute @s generic.scale base set 0.2