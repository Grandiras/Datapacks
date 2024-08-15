summon area_effect_cloud ~ ~ ~ {Particle:{type:"ash"},Radius:3,Duration:3}

execute positioned ~ ~-2 ~ run function server:hammer/mine_layer
execute positioned ~ ~-1 ~ run function server:hammer/mine_layer
execute positioned ~ ~ ~ run function server:hammer/mine_layer
execute positioned ~ ~1 ~ run function server:hammer/mine_layer
execute positioned ~ ~2 ~ run function server:hammer/mine_layer