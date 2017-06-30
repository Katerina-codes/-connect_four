class Grid
  def draw_grid
    Array.new(6) { Array.new(7, "[]") }
  end

  def place_move(grid, row_number, column_number, mark)
    grid[row_number][column_number] = mark
    grid
  end
end
