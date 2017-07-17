require_relative 'input_output'
require_relative 'grid'
require_relative 'converter'

class Game

  def initialize(input_output, grid, converter)
    @input_output = input_output
    @grid = grid
    @converter = converter
  end

  def display_grid(grid)
    @input_output.display_column_numbers
    @input_output.display_grid(grid)
  end

  def get_column_move
    @input_output.ask_for_column_move("column")
    column_number = @input_output.get_valid_column_move
    @converter.subtract_one(column_number)
  end

  def get_row_move
    @input_output.ask_for_row_move("row")
    row_number = @input_output.get_valid_row_move
    @converter.subtract_one(row_number)
  end

  def is_won?(moves)
    false
  end

  def game_flow

    grid = @grid.draw_grid
    display_grid(grid)
    row_move = get_row_move
    column_move = get_column_move

    until @grid.is_move_unique?(grid, row_move, column_move)
      row_move = get_row_move
      column_move = get_column_move
    end

  marked_grid = @grid.place_move(grid, row_move, column_move, " 0 ")
  @input_output.display_grid(marked_grid)
  end

end
