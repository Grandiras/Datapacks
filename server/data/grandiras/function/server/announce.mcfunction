execute store result score broadcast random_number run random value 0..15

# shrink stick
execute if score broadcast random_number matches 0 run tellraw @a {"text":"[Broadcast] ","color":"gold","extra":[{"text":"Sticks and stones may break my bones, but words will never get me down.","color":"white"}]}

# crab claw
execute if score broadcast random_number matches 1 run tellraw @a {"text":"[Broadcast] ","color":"gold","extra":[{"text":"Did you know that the crab claw is the only part of the crab that can be eaten?","color":"white"}]}

# excavator
execute if score broadcast random_number matches 2 run tellraw @a {"text":"[Broadcast] ","color":"gold","extra":[{"text":"Capitalism or Socialism, that's the question.","color":"white"}]}
execute if score broadcast random_number matches 3 run tellraw @a {"text":"[Broadcast] ","color":"gold","extra":[{"text":"Maybe breaking stones wasn't that bad of an idea after all?","color":"white"}]}

# fun facts about minecraft
execute if score broadcast random_number matches 4 run tellraw @a {"text":"[Broadcast] ","color":"gold","extra":[{"text":"Did you know that the first version of Minecraft was created in just six days?","color":"white"}]}
execute if score broadcast random_number matches 5 run tellraw @a {"text":"[Broadcast] ","color":"gold","extra":[{"text":"The creeper originally wasn't meant to be put into the game!","color":"white"}]}
execute if score broadcast random_number matches 6 run tellraw @a {"text":"[Broadcast] ","color":"gold","extra":[{"text":"The Ender Dragon is the final boss of Minecraft.","color":"white"}]}
execute if score broadcast random_number matches 7 run tellraw @a {"text":"[Broadcast] ","color":"gold","extra":[{"text":"The Nether is a dangerous place.","color":"white"}]}

# nonsense
execute if score broadcast random_number matches 8 run tellraw @a {"text":"[Broadcast] ","color":"gold","extra":[{"text":"The quick brown fox jumps over the lazy dog.","color":"white"}]}
execute if score broadcast random_number matches 9 run tellraw @a {"text":"[Broadcast] ","color":"gold","extra":[{"text":"The cake is a lie.","color":"white"}]}
execute if score broadcast random_number matches 10 run tellraw @a {"text":"[Broadcast] ","color":"gold","extra":[{"text":"The mitochondria is the powerhouse of the cell.","color":"white"}]}
execute if score broadcast random_number matches 11 run tellraw @a {"text":"[Broadcast] ","color":"gold","extra":[{"text":"The answer to life, the universe and everything is 42.","color":"white"}]}
execute if score broadcast random_number matches 12 run tellraw @a {"text":"[Broadcast] ","color":"gold","extra":[{"text":"The early bird catches the worm.","color":"white"}]}
execute if score broadcast random_number matches 13 run tellraw @a {"text":"[Broadcast] ","color":"gold","extra":[{"text":"The pen is mightier than the sword.","color":"white"}]}
execute if score broadcast random_number matches 14 run tellraw @a {"text":"[Broadcast] ","color":"gold","extra":[{"text":"The road to hell is paved with good intentions.","color":"white"}]}
execute if score broadcast random_number matches 15 run tellraw @a {"text":"[Broadcast] ","color":"gold","extra":[{"text":"The truth will set you free.","color":"white"}]}

schedule function grandiras:server/announce 3600s