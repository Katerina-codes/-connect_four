require 'game'

RSpec.describe Game do

  it "checks if game has been won" do
    game = Game.new(InputOutput.new, Grid.new, Converter.new)
    expect(game.is_won?(0)).to eq(false)
  end

end
