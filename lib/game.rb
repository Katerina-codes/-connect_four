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
    moves = moves.flatten.each_cons(4).map {|column_move| column_move}
    possible_winning_combos = (0..7).each_cons(4).map {|column_move| column_move}
    !(moves & possible_winning_combos).empty?
  end

  def game_flow
    row_moves = []
    column_moves = []

    grid = @grid.draw_grid
    display_grid(grid)

    until is_won?(row_moves) || is_won?(column_moves)
      row_move = get_row_move
      column_move = get_column_move

      until @grid.is_move_unique?(grid, row_move, column_move)
        row_move = get_row_move
        column_move = get_column_move
      end

      marked_grid = @grid.place_move(grid, row_move, column_move, " 0 ")
      row_moves.push([row_move])
      column_moves.push([column_move])
      @input_output.display_grid(marked_grid)
    end
  end

end
