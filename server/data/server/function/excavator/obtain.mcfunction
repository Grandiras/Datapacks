# if the player already has a hammer, do nothing
execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{is_excavator:true}}}]}] run return fail

give @s netherite_shovel[unbreakable={show_in_tooltip:true}, \
                         attribute_modifiers=[{type:generic.attack_damage, \
                                               id:"generic.attack_damage", \
                                               amount:0, \
                                               operation:"add_multiplied_base", \
                                               slot:hand}], \
                         custom_name='["", {"text": "Excavator", "italic": false, "color": "gold"}]', \
                         lore=['["", {"text": ""}]', '["", {"text": "Can be used to mine 5x5x5 chunks", "italic": false}]'], \
                         enchantments={unbreaking:10}, \
                         tool={"default_mining_speed": 0, "rules": [{blocks:"#mineable/shovel", speed:0.75, correct_for_drops:true}]}, \
                         custom_data={"is_excavator":true}] 1