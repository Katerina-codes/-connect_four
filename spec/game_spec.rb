require 'game'

describe Game do
  it "gets and marks a player's move" do
    input = StringIO.new("0\n0")
    output = StringIO.new
    input_output = InputOutput.new(output, input)
    game = Game.new(input_output)
    expect(game.play_move).to eq([["[0]", "[]", "[]", "[]", "[]", "[]", "[]"], ["[]", "[]", "[]", "[]", "[]", "[]", "[]"], ["[]", "[]", "[]", "[]", "[]", "[]", "[]"], ["[]", "[]", "[]", "[]", "[]", "[]", "[]"], ["[]", "[]", "[]", "[]", "[]", "[]", "[]"], ["[]", "[]", "[]", "[]", "[]", "[]", "[]"]])
  end
end
