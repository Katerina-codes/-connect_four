require 'game'

RSpec.describe Game do

  it "gets 0 as a column move" do
    game = Game.new(InputOutput.new, Grid.new)
    input = StringIO.new("0")
    expect(game.get_column_move).to eq(0)
  end

end
