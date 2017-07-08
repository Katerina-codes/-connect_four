class InputOutput

  def initialize(output = $stdout, input = $stdin)
    @output = output
    @input = input
  end

  def display_grid(grid)
    grid = grid.map do |row|
      row.join("") + "\n"
    end
    @output.puts grid.join
  end

  def get_move
    @input.gets.chomp.to_i
  end

  def move_valid_for_row?(move)
    move > 0 && move <= 6
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

  def move_valid_for_column?(move)
    if move == 0
      false
    else
      true
    end 
  end

end
