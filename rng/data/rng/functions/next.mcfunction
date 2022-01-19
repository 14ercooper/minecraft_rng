# Licensed under GPL v3.0
# https://github.com/14ercooper/minecraft_rng

# Update internal state 1
scoreboard players operation #int_1 rng *= #1a rng
scoreboard players operation #int_1 rng += #1b rng
execute if score #int_1 rng < #zero rng run scoreboard players operation #int_1 rng *= #minus_one rng

# Update internal state 2
scoreboard players operation #int_2 rng *= #2a rng
scoreboard players operation #int_2 rng += #2b rng
execute if score #int_2 rng < #zero rng run scoreboard players operation #int_2 rng *= #minus_one rng

# Update internal state 3
scoreboard players operation #int_3 rng *= #3a rng
scoreboard players operation #int_3 rng += #3b rng
execute if score #int_3 rng < #zero rng run scoreboard players operation #int_3 rng *= #minus_one rng

# Update value
scoreboard players operation $value rng = #thirteen rng
scoreboard players operation $value rng += #int_3 rng
scoreboard players operation $value rng *= #int_1 rng
scoreboard players operation $value rng += #int_2 rng
scoreboard players operation $value rng /= #four rng

# Clamp value
scoreboard players operation #mod rng = $rng_max rng
scoreboard players operation #mod rng -= $rng_min rng
scoreboard players operation #mod rng += #one rng
scoreboard players operation $value rng %= #mod rng
scoreboard players operation $value rng += $rng_min rng

# scoreboard players operation #int_1 rng *= $minus_one rng
# execute if score #int_1 rng < $zero rng run scoreboard players operation #int_1 rng *= $minus_one rng
# scoreboard players operation #int_1 rng %= $rng_max rng
