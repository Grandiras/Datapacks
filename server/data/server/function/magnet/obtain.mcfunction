playsound block.amethyst_block.resonate block @a ~ ~ ~ 1 1
particle lava ~ ~ ~ 1 1 1 1 10

kill @e[type=item,nbt={Item:{id:"minecraft:ancient_debris",count:1},OnGround:true}]

give @s heavy_core[enchantment_glint_override=true, \
                   custom_name={"text":"Magnet Level 1","color":"gold","italic":false}, \
                   custom_data={is_magnet:true}, \
                   lore=[{"text":""}, \
                         {"text":"A very dense object intended to attract items.","italic":false}, \
                         {"text":"Needs to be in the offhand","italic":false}, \
                         {"text":"Current range: 3 blocks","italic":false}, \
                         {"text":""}], \
                   unbreakable={}] 1