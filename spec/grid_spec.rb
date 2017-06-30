require 'grid'

describe Grid do
  it "draws a grid of 6 rows by 7 columns" do
    grid = Grid.new
    expect(grid.draw_grid).to eq(draw_grid)
  end

  it "places a player move" do
    grid = Grid.new
    expect(grid.place_move(draw_grid, 0, 0, "0")).to eq([["0", "[]", "[]", "[]", "[]", "[]", "[]"], ["[]", "[]", "[]", "[]", "[]", "[]", "[]"], ["[]", "[]", "[]", "[]", "[]", "[]", "[]"], ["[]", "[]", "[]", "[]", "[]", "[]", "[]"], ["[]", "[]", "[]", "[]", "[]", "[]", "[]"], ["[]", "[]", "[]", "[]", "[]", "[]", "[]"]])
  end

  def draw_grid
    Array.new(6) { Array.new(7, "[]") }
  end
end
