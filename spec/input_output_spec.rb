require 'input_output'

describe InputOutput do

  let(:output) { StringIO.new }
  let(:input) { StringIO.new }
  let(:input_output) { InputOutput.new(output, input) }

  it "displays the grid to the players" do
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
    expect(input_output.move_valid_for_row?(0)).to eq(false)
  end

    it "displays error message for invalid input" do
      input_output.display_error_message
      expect(output.string).to eq("Please enter a valid move\n")
    end

    it "prompts for a valid row move until move is valid" do
      input = StringIO.new("0\n1")
      input_output = InputOutput.new(output, input)
      input_output.get_valid_row_move
      expect(output.string).to include("Please enter a valid move")
    end

    it "returns false if column input is 0" do
      expect(input_output.move_valid_for_column?(0)).to eq(false)
    end

    it "returns true if column input is 1" do
      expect(input_output.move_valid_for_column?(1)).to eq(true)
    end

    it "returns true if column input is 8" do
      expect(input_output.move_valid_for_column?(8)).to eq(false)
    end

    it "prompts for a valid column move until move is valid" do
      input = StringIO.new("0\n1")
      input_output = InputOutput.new(output, input)
      input_output.get_valid_column_move
      expect(output.string).to include("Please enter a valid move" )
    end

    it "returns a valid column move" do
      input = StringIO.new("1")
      input_output = InputOutput.new(output, input)
      expect(input_output.get_valid_column_move).to eq(1)
    end

    it "displays an error message until move is valid" do
      input = StringIO.new("9\n1")
      input_output = InputOutput.new(output, input)
      input_output.get_valid_column_move
      expect(output.string).to include("Please enter a valid move\n")
    end

    it "displays a message asking for row move" do
      input_output.ask_for_row_move("row")
      expect(output.string).to eq("Please enter a valid row move from 1 - 6\n")
    end

    it "displays a message asking for column move" do
      input_output.ask_for_column_move("column")
      expect(output.string).to eq("Please enter a valid column move from 1 - 7\n")
    end

    it "displays numbers 1 - 7 for each column" do
      input = StringIO.new(" 1  2  3  4  5  6  7")
      input_output.display_column_numbers
      expect(output.string).to eq(" 1  2  3  4  5  6  7\n")
    end

end
