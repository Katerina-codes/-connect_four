require_relative 'lib/game'
require_relative 'lib/input_output'
require_relative 'lib/grid'

new_game = Game.new(InputOutput.new, Grid.new)
new_game.game_flow
