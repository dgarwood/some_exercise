require_relative '../models/stack'

describe Stack do
	before do
		@test_stack = Stack.new()
	end

  it "can push items onto the stack" do
  	@test_stack.push(1)
  	expect(@test_stack.length).to eq(1)
  	@test_stack.push(5) # because data values != length
  	expect(@test_stack.length).to eq(2)
  end

  it "can pop items from the stack" do
  	@test_stack.push("Hello ")
  	@test_stack.push("world!")
  	expect(@test_stack.pop()).to eq("world!")
  end

  it "popping an empty stack returns nil" do
  	expect(@test_stack.pop).to be_nil
  end

  it "items pushed onto stack pop in reverse order" do
  	(0..5).each do |i|
  		@test_stack.push(i)
  	end

  	(5..0).each do |j|
  		expect(@test_stack.pop).to eq(j)
  	end
  end
end
