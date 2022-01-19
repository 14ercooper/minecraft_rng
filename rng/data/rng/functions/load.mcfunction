# Licensed under GPL v3.0
# https://github.com/14ercooper/minecraft_rng

# Create scoreboard
scoreboard objectives remove rng
scoreboard objectives add rng dummy

# Set up initial values that are user-facing
scoreboard players set $value rng 0
scoreboard players set $rng_min rng 1
scoreboard players set $rng_max rng 6
scoreboard players set $seed rng 14

# Set internal state
scoreboard players set #int_1 rng 7
scoreboard players set #int_2 rng 17
scoreboard players set #int_3 rng 23
scoreboard players set #1a rng 1073742583
scoreboard players set #2a rng 1073741827
scoreboard players set #3a rng 2000000407
scoreboard players set #1b rng 1073741953
scoreboard players set #2b rng 1073742223
scoreboard players set #3b rng 2000000579
scoreboard players set #zero rng 0
scoreboard players set #minus_one rng -1
scoreboard players set #thirteen rng 13
scoreboard players set #seven rng 13
scoreboard players set #23 rng 13
scoreboard players set #four rng 4
scoreboard players set #two rng 2
scoreboard players set #one rng 1

# Load the seed
function rng:seed
