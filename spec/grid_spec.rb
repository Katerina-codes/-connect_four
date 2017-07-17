require 'grid'

describe Grid do
  it "draws a grid of 6 rows by 7 columns" do
    grid = Grid.new
    expect(grid.draw_grid).to eq(draw_grid)
  end

  it "places a player move" do
    grid = Grid.new
    expect(grid.place_move(draw_grid, 0, 0, " 0 ")).to eq([[" 0 ", "[ ]", "[ ]", "[ ]", "[ ]", "[ ]", "[ ]"], ["[ ]", "[ ]", "[ ]", "[ ]", "[ ]", "[ ]", "[ ]"], ["[ ]", "[ ]", "[ ]", "[ ]", "[ ]", "[ ]", "[ ]"], ["[ ]", "[ ]", "[ ]", "[ ]", "[ ]", "[ ]", "[ ]"], ["[ ]", "[ ]", "[ ]", "[ ]", "[ ]", "[ ]", "[ ]"], ["[ ]", "[ ]", "[ ]", "[ ]", "[ ]", "[ ]", "[ ]"]])
  end

  it "returns false if 0, 0 is entered twice" do
    grid = Grid.new
    grid_in_play = draw_grid
    grid_in_play = grid.place_move(grid_in_play, 0, 0, " 0 ")
    expect(grid.is_move_unique?(grid_in_play, 0, 0)).to eq(false)
  end

  it "returns true if 0, 0 is entered once" do
    grid = Grid.new
    grid_in_play = draw_grid
    expect(grid.is_move_unique?(grid_in_play, 0, 0)).to eq(true)
  end

  def draw_grid
    Array.new(6) { Array.new(7, "[ ]") }
  end

end
