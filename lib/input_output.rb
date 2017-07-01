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

end
