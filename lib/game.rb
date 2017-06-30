require_relative 'input_output'
require_relative 'grid'

class Game

  def initialize(input_output = InputOutput.new, grid = Grid.new)
    @input_output = input_output
    @grid = grid
  end

  def play_move
    grid = @grid.draw_grid
    @input_output.display_grid(grid)
    row_number = @input_output.get_move
    column_number = @input_output.get_move
    @grid.place_move(grid, row_number, column_number, "[0]")
  end

  def game_flow
    marked_grid = play_move
    @input_output.display_grid(marked_grid)
  end
end
