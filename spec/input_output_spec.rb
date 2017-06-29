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

end
