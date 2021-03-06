# Minecraft RNG Datapack
### Licensed Under GPL v3.0

## Installation
1) Add the datapack to your world
2) Run `/reload`
  - Note: Every time the world is reloaded or the reload command is run, this RNG system will reset to the default seed of 14 and it's initial state
  - Initially, the system is set up to simulate a roll of a 6-sided dice ($rng_max = 6; $rng_min = 1)

## Getting an RNG value
1) Run the command `/function rng:next`
2) Your random value will be in the scoreboard `rng` under player `$value`
  - It is important to note that all values generated will be positive

## Setting the upper and lower bounds
1) Set the score for either `$rng_max` or `$rng_min`
2) Note: the system does not bounds check these values. Setting max less than min or either value negative will result in undefined behavior

## Setting the seed
1) Set a value into the scoreboard `rng` for player `$seed`
2) Run `/function rng:seed`
  - This will reset the RNG system to the default state for the given seed

## Notes
- If you have a scoreboard called `rng`, please either change the name of that scoreboard or the one used by this datpack (in all places it occurs)