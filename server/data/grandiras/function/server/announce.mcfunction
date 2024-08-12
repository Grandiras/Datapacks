execute store result score new_number random_number run random value 0..9

# crab claw
execute if score new_number random_number matches 0 run tellraw @a {"text":"[Broadcast] ","color":"gold","extra":[{"text":"Did you know that the crab claw is the only part of the crab that can be eaten?","color":"white"}]}

# shrink stick
execute if score new_number random_number matches 1 run tellraw @a {"text":"[Broadcast] ","color":"gold","extra":[{"text":"Sticks and stones may break my bones, but words will never get me down.","color":"white"}]}

# fun facts about minecraft
execute if score new_number random_number matches 2 run tellraw @a {"text":"[Broadcast] ","color":"gold","extra":[{"text":"Did you know that the first version of Minecraft was created in just six days?","color":"white"}]}
execute if score new_number random_number matches 3 run tellraw @a {"text":"[Broadcast] ","color":"gold","extra":[{"text":"The creeper wasn't meant to be put into the game!","color":"white"}]}

# nonsense
execute if score new_number random_number matches 4 run tellraw @a {"text":"[Broadcast] ","color":"gold","extra":[{"text":"The quick brown fox jumps over the lazy dog.","color":"white"}]}
execute if score new_number random_number matches 5 run tellraw @a {"text":"[Broadcast] ","color":"gold","extra":[{"text":"The cake is a lie.","color":"white"}]}
execute if score new_number random_number matches 6 run tellraw @a {"text":"[Broadcast] ","color":"gold","extra":[{"text":"The mitochondria is the powerhouse of the cell.","color":"white"}]}
execute if score new_number random_number matches 7 run tellraw @a {"text":"[Broadcast] ","color":"gold","extra":[{"text":"The answer to life, the universe and everything is 42.","color":"white"}]}
execute if score new_number random_number matches 8 run tellraw @a {"text":"[Broadcast] ","color":"gold","extra":[{"text":"The early bird catches the worm.","color":"white"}]}
execute if score new_number random_number matches 9 run tellraw @a {"text":"[Broadcast] ","color":"gold","extra":[{"text":"The pen is mightier than the sword.","color":"white"}]}

schedule function grandiras:server/announce 3600s