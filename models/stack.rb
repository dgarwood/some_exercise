class Stack
  def initialize()
    @stack = Array.new()
  end

  def push(value)
    # could have used @stack.push(value) here
    @stack.insert(-1, value)
  end

  def pop()
    # could have used @stack.pop() here
    @stack.delete_at(-1)
  end

  def length()
    # added to help test class
    @stack.length
  end
end

numbers = [3, 2, 1, 9, 7, 5, 8, 6]
a_stack = Stack.new()
puts "This is a stack, a LIFO data structure"
puts "It can reverse the data given to it"
puts "Original: #{numbers}"

numbers.each do |value|
  a_stack.push(value)
end

puts "Popping from stack:"

while a_stack.length > 0
  print "#{a_stack.pop} "
end
puts