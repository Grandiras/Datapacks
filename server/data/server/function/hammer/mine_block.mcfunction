execute unless block ~ ~ ~ #mineable/pickaxe run return fail

execute positioned ~ ~ ~ run loot spawn ~ ~ ~ mine ~ ~ ~
execute run setblock ~ ~ ~ air

# generate a new random number between 1 and 100000, if 1, spawn the excavator at this position
execute store result score @s random_number run random value 1..100000
execute unless score @s random_number matches 1 run return fail
execute as @s at @s positioned ~ ~ ~ run function server:excavator/drop