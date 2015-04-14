#Write a method power which takes two integers (base and exponent) and returns the base raised to the power of exponent. Do not use Ruby’s ** operator for this!

def power(base, exponent)
  answer = 1
  
  exponent.times do
    answer = answer * base
  end

  return answer
end


# Tests
# puts power(2,2)
# puts power(5,3)
# puts power(10,6)