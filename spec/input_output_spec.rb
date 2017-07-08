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

    it "displays error message for invalid input" do
      output = StringIO.new
      input_output = InputOutput.new(output)
      input_output.display_error_message
      expect(output.string).to eq("Please enter a valid move\n")
    end

    it "prompts for a valid row move until move is valid" do
      output = StringIO.new
      input = StringIO.new("0\n1")
      input_output = InputOutput.new(output, input)
      input_output.get_valid_row_move
      expect(output.string).to include("Please enter a valid move")
    end

    it "returns false if column input is 0" do
      input_output = InputOutput.new
      expect(input_output.move_valid_for_column?(0)).to eq(false)
    end

end
