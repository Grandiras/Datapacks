playsound entity.lightning_bolt.impact block @a ~ ~ ~ 1 1 1
particle lava ~ ~ ~ 0 0 0 1 10

kill @e[type=item,nbt={Item:{id:"minecraft:heavy_core",count:1,components:{"minecraft:custom_data":{is_magnet:true}}},OnGround:true}]
kill @e[type=item,nbt={Item:{id:"minecraft:obsidian",count:10},OnGround:true}]

summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:heavy_core",count:1,components:{enchantments:{unbreaking:10}, \
                                                                                     custom_name:'["", {"text": "Magnet Level 2", "italic": false, "color": "gold"}]', \
                                                                                     lore:['["", {"text": ""}]', \
                                                                                     '["", {"text": "A very dense object intended to attract items.", "italic": false}]', \
                                                                                     '["", {"text": "Needs to be in the offhand", "italic": false}]', \
                                                                                     '["", {"text": "Current range: 5 blocks", "italic": false}]'], \
                                                                                     custom_data:{is_magnet_second_stage:true}}}}