class Grid
  def draw_grid
    Array.new(6) { Array.new(7, "[ ]") }
  end

  def place_move(grid, row_number, column_number, mark)
    grid[row_number][column_number] = mark
    grid
  end

  def is_move_unique?(grid_in_play, row_number, column_number)
    !grid_in_play[row_number][column_number] == "0"
  end

end
