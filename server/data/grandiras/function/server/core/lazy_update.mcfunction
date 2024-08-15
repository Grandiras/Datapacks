# reset the shrink stick
advancement revoke @s only global:shrink_stick/activated

# check if an item (a magnet? is in the offhand) to pull items towards the player
execute if data entity @s Inventory[{Slot:-106b}] run function grandiras:server/magnet/pull_items

# check if the player has mined 100000 stones to grant the hammer
execute if score @s stones_mined matches 100000.. run advancement grant @s only global:hammer/obtained

# other checks
function grandiras:server/crab_claw/check_if_in_offhand
function grandiras:server/magnet/check_conditions

# reset the timer
scoreboard players set @s timer 0