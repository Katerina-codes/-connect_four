class InputOutput

  def initialize(output = $stdout)
    @output = output
  end

  def display_grid(grid)
    grid = grid.map do |row|
      row.join("") + "\n"
    end
    @output.puts grid.join
  end

end
