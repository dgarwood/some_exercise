module OtherStuff

  # reverses an array
  def OtherStuff.reverser(array)

    result = Array.new

    # could also have used a stack here
    # it would have read the whole array, pushing each element
    # then pop the stack into a new array and return that as 
    # the result, which would have read the data twice
    #
    # this implementation only reads the array once, rather than twice
    (0..array.length - 1).each do |i|
      result.insert(0, array[i])
    end

    if array.is_a? String
      return result.join()
    end
    
    return result
  end

  # returns an array of the even numbers from 0 to N
  def OtherStuff.even_numbers(n)
    result = Array.new()
    (0..n).each do |i|
      if i % 2 == 0
        result.push(i)
      end
    end

    return result
  end
end

numbers = [1, 2, 3, 6, 5, 4]
sentence = "This is a test of the reverser method.  This is only a test"

puts "Reverse an array of numbers"
puts "This: #{numbers}"
puts "becomes: #{OtherStuff.reverser(numbers)}"
puts "Reverse an array of words"
puts "Original:"
puts "#{sentence}"
puts "Reversed:"
puts "#{OtherStuff.reverser(sentence.split(' '))}"
puts "And reversing a string"
puts "Reversed string:"
puts "#{OtherStuff.reverser(sentence)}"

puts "And here are some even numbers"

OtherStuff.even_numbers(100).each do |number|
  if number % 20 == 0
    puts "#{number}"
  else
    print "#{number}, "
  end
end

