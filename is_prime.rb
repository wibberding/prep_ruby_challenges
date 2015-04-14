#Write a method is_prime? which takes in a number and returns true if it is a prime number.

def is_prime?(number)

  for divisor in 2..(number - 1)
    if (number % divisor) == 0
      return false
    end
  end

  true
end


#Tests

# puts is_prime?(5) # expect true
# puts is_prime?(10) # expect false
# puts is_prime?(11) #expect true
# puts is_prime?(513) # expect ?