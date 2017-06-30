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

  def get_column
    @input.gets.chomp
  end

end
