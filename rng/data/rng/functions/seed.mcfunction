# Licensed under GPL v3.0
# https://github.com/14ercooper/minecraft_rng

# Read in the seed into the internal states
scoreboard players operation #int_1 rng = $seed rng
scoreboard players operation #int_2 rng = $seed rng
scoreboard players operation #int_3 rng = $seed rng
scoreboard players operation #int_1 rng *= #seven rng
scoreboard players operation #int_2 rng *= #23 rng
scoreboard players operation #int_3 rng *= #thirteen rng

# Burn an RNG state
function rng:next
