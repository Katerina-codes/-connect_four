require 'game'

RSpec.describe Game do

  it "returns false if moves are [0]" do
    game = Game.new(InputOutput.new, Grid.new, Converter.new)
    expect(game.is_won?([[0]])).to eq(false)
  end

  it "returns true if moves are [1, 2, 3, 4]" do
    game = Game.new(InputOutput.new, Grid.new, Converter.new)
    expect(game.is_won?([[1, 2, 3, 4]])).to eq(true)
  end

  it "returns false if moves are [0, 0]" do
    game = Game.new(InputOutput.new, Grid.new, Converter.new)
    expect(game.is_won?([[0, 0]])).to eq(false)
  end

  it "returns false if moves are [0, 0, 0]" do
    game = Game.new(InputOutput.new, Grid.new, Converter.new)
    expect(game.is_won?([[0, 0, 0]])).to eq(false)
  end

  it "returns [4, 5, 6, 7] if moves are [4, 5, 6, 7]" do
    game = Game.new(InputOutput.new, Grid.new, Converter.new)
    expect(game.is_won?([[4, 5, 6, 7]])).to eq(true)
  end

  it "returns true if moves are [[0, 1, 2, 3, 4]]" do
    game = Game.new(InputOutput.new, Grid.new, Converter.new)
    expect(game.is_won?([[0, 1, 2, 3, 4]])).to eq(true)
  end

end
