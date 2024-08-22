execute store result score broadcast random_number run random value 0..33

# shrink stick
execute if score broadcast random_number matches 0 run tellraw @a {"text":"[Broadcast] ","color":"gold","extra":[{"text":"Sticks and stones may break my bones, but words will never get me down.","color":"white"}]}

# crab claw
execute if score broadcast random_number matches 1 run tellraw @a {"text":"[Broadcast] ","color":"gold","extra":[{"text":"Did you know that the crab claw is the only part of the crab that can be eaten?","color":"white"}]}

# hammer
execute if score broadcast random_number matches 2 run tellraw @a {"text":"[Broadcast] ","color":"gold","extra":[{"text":"Capitalism or Socialism, that's the question.","color":"white"}]}
execute if score broadcast random_number matches 3 run tellraw @a {"text":"[Broadcast] ","color":"gold","extra":[{"text":"Maybe breaking stones wasn't that bad of an idea after all?","color":"white"}]}

# excavator
execute if score broadcast random_number matches 4 run tellraw @a {"text":"[Broadcast] ","color":"gold","extra":[{"text":"You have to really smash those stones!","color":"white"}]}
execute if score broadcast random_number matches 5 run tellraw @a {"text":"[Broadcast] ","color":"gold","extra":[{"text":"The more you dig, the more you find.","color":"white"}]}
execute if score broadcast random_number matches 6 run tellraw @a {"text":"[Broadcast] ","color":"gold","extra":[{"text":"The tool to use is the question. And your endurance...","color":"white"}]}

# tree chopper
execute if score broadcast random_number matches 7 run tellraw @a {"text":"[Broadcast] ","color":"gold","extra":[{"text":"Suspicious, huh?","color":"white"}]}
execute if score broadcast random_number matches 8 run tellraw @a {"text":"[Broadcast] ","color":"gold","extra":[{"text":"It's a stupid idea, but it surely is rewarding...","color":"white"}]}
execute if score broadcast random_number matches 9 run tellraw @a {"text":"[Broadcast] ","color":"gold","extra":[{"text":"The right tool at the right place is needed to dig the right block.","color":"white"}]}
execute if score broadcast random_number matches 10 run tellraw @a {"text":"[Broadcast] ","color":"gold","extra":[{"text":"Yeah, not quite the right block, that won't work, but it has to be mined somehow...","color":"white"}]}

# magnet
execute if score broadcast random_number matches 11 run tellraw @a {"text":"[Broadcast] ","color":"gold","extra":[{"text":"Actio = Reactio. Sounds pretty attracting, huh?","color":"white"}]}
execute if score broadcast random_number matches 12 run tellraw @a {"text":"[Broadcast] ","color":"gold","extra":[{"text":"Density is key. At least for gravity.","color":"white"}]}
execute if score broadcast random_number matches 13 run tellraw @a {"text":"[Broadcast] ","color":"gold","extra":[{"text":"The densest things in this world combined may form something new...","color":"white"}]}

# fun facts about minecraft
execute if score broadcast random_number matches 14 run tellraw @a {"text":"[Broadcast] ","color":"gold","extra":[{"text":"Did you know that the first version of Minecraft was created in just six days?","color":"white"}]}
execute if score broadcast random_number matches 15 run tellraw @a {"text":"[Broadcast] ","color":"gold","extra":[{"text":"The creeper originally wasn't meant to be put into the game!","color":"white"}]}
execute if score broadcast random_number matches 16 run tellraw @a {"text":"[Broadcast] ","color":"gold","extra":[{"text":"The Ender Dragon is the final boss of Minecraft.","color":"white"}]}
execute if score broadcast random_number matches 17 run tellraw @a {"text":"[Broadcast] ","color":"gold","extra":[{"text":"The Nether is a dangerous place.","color":"white"}]}
execute if score broadcast random_number matches 18 run tellraw @a {"text":"[Broadcast] ","color":"gold","extra":[{"text":"The integer is the limit for most things in this game.","color":"white"}]}
execute if score broadcast random_number matches 19 run tellraw @a {"text":"[Broadcast] ","color":"gold","extra":[{"text":"The world is infinite, but not quite, just seven times the size of Earth...","color":"white"}]}

# nonsense
execute if score broadcast random_number matches 20 run tellraw @a {"text":"[Broadcast] ","color":"gold","extra":[{"text":"The quick brown fox jumps over the lazy dog.","color":"white"}]}
execute if score broadcast random_number matches 21 run tellraw @a {"text":"[Broadcast] ","color":"gold","extra":[{"text":"The cake is a lie.","color":"white"}]}
execute if score broadcast random_number matches 22 run tellraw @a {"text":"[Broadcast] ","color":"gold","extra":[{"text":"The mitochondria is the powerhouse of the cell.","color":"white"}]}
execute if score broadcast random_number matches 23 run tellraw @a {"text":"[Broadcast] ","color":"gold","extra":[{"text":"The answer to life, the universe and everything is 42.","color":"white"}]}
execute if score broadcast random_number matches 24 run tellraw @a {"text":"[Broadcast] ","color":"gold","extra":[{"text":"The early bird catches the worm.","color":"white"}]}
execute if score broadcast random_number matches 25 run tellraw @a {"text":"[Broadcast] ","color":"gold","extra":[{"text":"The pen is mightier than the sword.","color":"white"}]}
execute if score broadcast random_number matches 26 run tellraw @a {"text":"[Broadcast] ","color":"gold","extra":[{"text":"The road to hell is paved with good intentions.","color":"white"}]}
execute if score broadcast random_number matches 27 run tellraw @a {"text":"[Broadcast] ","color":"gold","extra":[{"text":"The truth will set you free.","color":"white"}]}
execute if score broadcast random_number matches 28 run tellraw @a {"text":"[Broadcast] ","color":"gold","extra":[{"text":"To be or not to be...","color":"white"}]}
execute if score broadcast random_number matches 29 run tellraw @a {"text":"[Broadcast] ","color":"gold","extra":[{"text":"To infinity and beyond!","color":"white"}]}
execute if score broadcast random_number matches 30 run tellraw @a {"text":"[Broadcast] ","color":"gold","extra":[{"text":"To kill two birds with one stone.","color":"white"}]}
execute if score broadcast random_number matches 31 run tellraw @a {"text":"[Broadcast] ","color":"gold","extra":[{"text":"To live and let die.","color":"white"}]}
execute if score broadcast random_number matches 32 run tellraw @a {"text":"[Broadcast] ","color":"gold","extra":[{"text":"To make a long story short... it's a game.","color":"white"}]}
execute if score broadcast random_number matches 33 run tellraw @a {"text":"[Broadcast] ","color":"gold","extra":[{"text":"To the moon and back.","color":"white"}]}

schedule function server:core/announce 3600s