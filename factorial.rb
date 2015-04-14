# Write a method factorial which takes a number and returns the sum of every number up to the current number multiplied together.

def factorial(number)
  answer = 1
  until (number == 0)  do
     answer = answer * number
     number = number -1
  end
  
  return answer

end


# Tests
# puts "The factorial of one is #{factorial(1)}"
# puts "The factorial of two is #{factorial(2)}"
# puts "The factorial of five is #{factorial(5)}"
# puts "The factorial of ten is #{factorial(10)}"
