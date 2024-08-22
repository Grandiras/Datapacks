execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{is_tree_chopper:true}}}]}] run return fail

give @s netherite_axe[unbreakable={show_in_tooltip:true}, \
                      attribute_modifiers=[{type:generic.attack_damage, \
                                            id:"generic.attack_damage", \
                                            amount:0, \
                                            operation:"add_multiplied_base", \
                                            slot:hand}], \
                      custom_name='["", {"text": "Tree Chopper", "italic": false, "color": "gold"}]', \
                      lore=['["", {"text": ""}]', '["", {"text": "Can be used to chop down entire trees", "italic": false}]'], \
                      enchantments={unbreaking:10}, \
                      tool={"default_mining_speed": 0, "rules": [{blocks:"#logs", speed:0.75, correct_for_drops:true}]}, \
                      custom_data={"is_tree_chopper":true}] 1