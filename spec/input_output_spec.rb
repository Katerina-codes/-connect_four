require 'input_output'

describe InputOutput do
  it "displays the grid to the players" do
    output = StringIO.new
    input_output = InputOutput.new(output)
    input_output.display_grid([["[]", "[]", "[]", "[]", "[]", "[]", "[]"], ["[]", "[]", "[]", "[]", "[]", "[]", "[]"], ["[]", "[]", "[]", "[]", "[]", "[]", "[]"], ["[]", "[]", "[]", "[]", "[]", "[]", "[]"], ["[]", "[]", "[]", "[]", "[]", "[]", "[]"], ["[]", "[]", "[]", "[]", "[]", "[]", "[]"]])
    expect(output.string).to eq(
"""[][][][][][][]
[][][][][][][]
[][][][][][][]
[][][][][][][]
[][][][][][][]
[][][][][][][]
""")
end

  it "gets a column number from the player" do
    input = StringIO.new("0")
    input_output = InputOutput.new(output, input)
    expect(input_output.get_move).to eq(0)
  end

  it "returns false if row input is 0" do
    input_output = InputOutput.new
    expect(input_output.move_valid_for_row?(0)).to eq(false)
  end

end
