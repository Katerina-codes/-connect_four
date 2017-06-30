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

  it "gets a move from the player" do
    input = StringIO.new("0")
    grid = InputOutput.new(output, input)
    expect(grid.get_column).to eq("0")
  end

end
