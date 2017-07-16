require_relative 'input_output'
require_relative 'grid'

class Game

  def initialize(input_output, grid)
    @input_output = input_output
    @grid = grid
  end

  def game_flow
    grid = @grid.draw_grid
    @input_output.display_column_numbers
    @input_output.display_grid(grid)
    @input_output.ask_for_row_move("row")
    row_number = @input_output.get_valid_row_move
    @input_output.ask_for_column_move("column")
    column_number = @input_output.get_valid_column_move

    until @grid.is_move_unique?(grid, row_number, column_number)
      @input_output.ask_for_row_move("row")
      row_number = @input_output.get_valid_row_move
      @input_output.ask_for_column_move("column")
      column_number = @input_output.get_valid_column_move
    end
  marked_grid = @grid.place_move(grid, row_number, column_number, "0")
  @input_output.display_grid(marked_grid)
  end

end
