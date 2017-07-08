require_relative 'input_output'
require_relative 'grid'

class Game

  def initialize(input_output, grid)
    @input_output = input_output
    @grid = grid
  end

  def game_flow
    grid = @grid.draw_grid
    @input_output.display_grid(grid)
    row_number = @input_output.get_valid_row_move
    column_number = @input_output.get_move
    marked_grid = @grid.place_move(grid, row_number, column_number, "0")
    @input_output.display_grid(marked_grid)
  end

end
