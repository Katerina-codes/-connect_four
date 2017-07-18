class InputOutput

  def initialize(output = $stdout, input = $stdin)
    @output = output
    @input = input
  end

  def display_grid(grid)
    formatted_grid = grid.map do |row|
      row.join("") + "\n"
    end

    @output.print display_column_numbers
    formatted_grid.each.with_index(1) do |row, index|
      @output.print index.to_s + " ", row
    end
  end

  def get_move
    @input.gets.chomp.to_i
  end

  def move_valid_for_row?(move)
    move > 0 && move <= 6
  end

  def move_valid_for_column?(move)
    move > 0 && move < 8
  end

  def display_error_message
    @output.puts "Please enter a valid move"
  end

   def get_valid_row_move
     move = get_move
     until move_valid_for_row?(move)
      display_error_message
      move = get_move
    end
  move
  end

  def get_valid_column_move
    move = get_move
    until move_valid_for_column?(move)
      display_error_message
      move = get_move
    end
  move
  end

  def ask_for_row_move(move_type, player_type)
    @output.puts "#{player_type}, please enter a valid row move from 1 - 6"
  end

  def ask_for_column_move(move_type, player_type)
    @output.puts "#{player_type}, please enter a valid column move from 1 - 7"
  end

  def display_column_numbers
    @output.puts "   1  2  3  4  5  6  7"
  end

end
