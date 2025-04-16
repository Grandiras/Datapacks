give @s netherite_shovel[enchantment_glint_override=true, \
                         custom_name={"text":"Excavator","color":"gold","italic":false}, \
                         custom_data={is_excavator:true}, \
                         lore=[{"text":""}, \
                               {"text":"Can be used to mine 5x5x5 chunks","italic":false}, \
                               {"text":""}], \
                         attribute_modifiers=[{type:"attack_damage", \
                                              id:"attack_damage", \
                                              amount:0, \
                                              operation:"add_multiplied_base"}], \
                         tooltip_display={hidden_components:["attribute_modifiers"]}, \
                         unbreakable={}, \
                         tool={default_mining_speed:0.0, rules:[{blocks:"#mineable/shovel", speed:0.75, correct_for_drops:true}]}] 1