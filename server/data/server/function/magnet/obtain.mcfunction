playsound block.amethyst_block.resonate block @a ~ ~ ~ 1 1 1
particle lava ~ ~ ~ 1 1 1 1 10

kill @e[type=item,nbt={Item:{id:"minecraft:ancient_debris",count:1},OnGround:true}]

summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:heavy_core",count:1,components:{enchantments:{unbreaking:10}, \
                                                                                     custom_name:'["", {"text": "Magnet Level 1", "italic": false, "color": "gold"}]', \
                                                                                     lore:['["", {"text": ""}]', \
                                                                                           '["", {"text": "A very dense object intended to attract items.", "italic": false}]', \
                                                                                           '["", {"text": "Needs to be in the offhand", "italic": false}]', \
                                                                                           '["", {"text": "Current range: 3 blocks", "italic": false}]'], \
                                                                                     custom_data:{is_magnet:true}}}}