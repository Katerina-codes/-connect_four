require 'converter'

RSpec.describe Converter do

  it "subtracts 1 from a 1" do
    converter = Converter.new
    expect(converter.subtract_one(1)).to eq(0)
  end
  
end
