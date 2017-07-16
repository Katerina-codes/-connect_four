require 'converter'

RSpec.describe Converter do

  it "subtracts 1 from 1" do
    converter = Converter.new
    expect(converter.subtract_one(1)).to eq(0)
  end

  it "subtracts 1 from 2" do
    converter = Converter.new
    expect(converter.subtract_one(2)).to eq(1)
  end

  it "subtracts 1 from 3" do
    converter = Converter.new
    expect(converter.subtract_one(3)).to eq(2)
  end

end
