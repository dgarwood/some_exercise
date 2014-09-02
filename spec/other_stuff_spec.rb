require_relative '../models/other_stuff'

describe OtherStuff do
  before do
    @number_array = [1, 2, 3, 4, 5]
    @string = "Hello, world!"
    @words = ["apples", "pears", "oranges"]
  end

	it "can reverse an array of numbers" do
		expect(OtherStuff.reverser(@number_array)).to eq(@number_array.reverse)
	end

	it "can reverse a string" do
		expect(OtherStuff.reverser(@string)).to eq(@string.reverse)
	end

  it "can reverse a list of words" do
    expect(OtherStuff.reverser(@words)).to eq(@words.reverse)
  end

	it "can print the even numbers" do
		expect(OtherStuff.even_numbers(2)).to eq([0, 2])
    expect(OtherStuff.even_numbers(7)).to eq([0, 2, 4, 6])
	end
end