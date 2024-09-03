playsound entity.ender_dragon.growl block @a ~ ~ ~ 1 1
particle dragon_breath ~ ~ ~ 0 0 0 0.05 100

kill @e[type=item,nbt={Item:{id:"minecraft:heavy_core",count:1,components:{"minecraft:custom_data":{is_magnet_second_stage:true}}},OnGround:true}]
kill @e[type=item,nbt={Item:{id:"minecraft:nether_star",count:1},OnGround:true}]

summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:heavy_core",count:1,components:{enchantments:{unbreaking:10}, \
                                                                                     custom_name:'["", {"text": "Magnet Level 3", "italic": false, "color": "gold"}]', \
                                                                                     lore:['["", {"text": ""}]', \
                                                                                     '["", {"text": "A very dense object intended to attract items.", "italic": false}]', \
                                                                                     '["", {"text": "Needs to be in the offhand", "italic": false}]', \
                                                                                     '["", {"text": "Current range: 7 blocks", "italic": false}]'], \
                                                                                     custom_data:{is_magnet_third_stage:true}}}}