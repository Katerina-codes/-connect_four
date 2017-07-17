require 'game'

RSpec.describe Game do

  it "returns [] if moves are [0]" do
    game = Game.new(InputOutput.new, Grid.new, Converter.new)
    expect(game.is_won_in_row?([[0]])).to eq([])
  end

  it "returns [[1, 2, 3, 4]] if moves are [1, 2, 3, 4]" do
    game = Game.new(InputOutput.new, Grid.new, Converter.new)
    expect(game.is_won_in_row?([[1, 2, 3, 4]])).to eq([[1, 2, 3, 4]])
  end

  it "returns [] if moves are [0, 0]" do
    game = Game.new(InputOutput.new, Grid.new, Converter.new)
    expect(game.is_won_in_row?([[0, 0]])).to eq([])
  end

  it "returns [] if moves are [0, 0, 0]" do
    game = Game.new(InputOutput.new, Grid.new, Converter.new)
    expect(game.is_won_in_row?([[0, 0, 0]])).to eq([])
  end

end
