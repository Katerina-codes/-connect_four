require 'grid'

describe Grid do
  it "draws a grid of 6 rows by 7 columns" do
    grid = Grid.new
    expect(grid.draw_grid).to eq(draw_grid)
  end

  def draw_grid
    "[][][][][][][]\n" * 6
  end
end
