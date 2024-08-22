# get the current block (flag check, cause this is fired after the first log is chopped)
execute unless block ~ ~ ~ #logs unless score chopping_started flag matches 1 run return fail

# reset the flag
scoreboard players set chopping_started flag 0

# ux
playsound block.wood.break block @a ~ ~ ~ 1 1 1
particle wax_off ~ ~ ~ 0.5 0.5 0.5 1 10

# actual chopping
execute positioned ~ ~ ~ run loot spawn ~ ~ ~ mine ~ ~ ~
execute run setblock ~ ~ ~ air

# check the adjacent blocks
execute positioned ~1 ~ ~ run function server:tree_chopper/chop_tree
execute positioned ~-1 ~ ~ run function server:tree_chopper/chop_tree
execute positioned ~ ~ ~1 run function server:tree_chopper/chop_tree
execute positioned ~ ~ ~-1 run function server:tree_chopper/chop_tree
execute positioned ~1 ~ ~1 run function server:tree_chopper/chop_tree
execute positioned ~1 ~ ~-1 run function server:tree_chopper/chop_tree
execute positioned ~-1 ~ ~1 run function server:tree_chopper/chop_tree
execute positioned ~-1 ~ ~-1 run function server:tree_chopper/chop_tree

execute positioned ~1 ~1 ~ run function server:tree_chopper/chop_tree
execute positioned ~-1 ~1 ~ run function server:tree_chopper/chop_tree
execute positioned ~ ~1 ~1 run function server:tree_chopper/chop_tree
execute positioned ~ ~1 ~-1 run function server:tree_chopper/chop_tree
execute positioned ~1 ~1 ~1 run function server:tree_chopper/chop_tree
execute positioned ~1 ~1 ~-1 run function server:tree_chopper/chop_tree
execute positioned ~-1 ~1 ~1 run function server:tree_chopper/chop_tree
execute positioned ~-1 ~1 ~-1 run function server:tree_chopper/chop_tree
execute positioned ~ ~1 ~ run function server:tree_chopper/chop_tree