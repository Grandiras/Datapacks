# check if the hammer was used
execute if score @s mined_with_hammer matches 1.. if score @s ray_hit matches 1.. \
        if data entity @s SelectedItem.components."minecraft:custom_data".is_hammer \
        at @e[type=armor_stand,tag=ray_hit,limit=1,sort=nearest] positioned ~ ~ ~ \
        run function grandiras:server/hammer/mine_chunk

# reset the score
scoreboard players set @s mined_with_hammer 0