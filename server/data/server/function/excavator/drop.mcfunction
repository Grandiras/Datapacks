playsound entity.villager.trade block @a ~ ~ ~ 1 1
particle happy_villager ~ ~ ~ 1 1 1 1 10

execute positioned ~ ~ ~ run summon item ~ ~ ~ {Item:{id:"minecraft:netherite_shovel",count:1,components: {enchantments:{unbreaking:10}, \
                                                                                                                    custom_name:'["", {"text": "Excavator", "italic": false, "color": "gold"}]', \
                                                                                                                    lore:['["", {"text": ""}]', '["", {"text": "Can be used to mine 5x5x5 chunks", "italic": false}]'], \
                                                                                                                    custom_data:{is_excavator:true}, \
                                                                                                                    attribute_modifiers:[{type:generic.attack_damage, \
                                                                                                                                          id:"generic.attack_damage", \
                                                                                                                                          amount:0, \
                                                                                                                                          operation:"add_multiplied_base", \
                                                                                                                                          slot:hand}], \
                                                                                                                    unbreakable:{show_in_tooltip:true}, \
                                                                                                                    tool:{default_mining_speed:0, rules:[{blocks:"#mineable/shovel", speed:0.75, correct_for_drops:true}]}}}}