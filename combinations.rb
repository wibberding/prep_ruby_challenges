#Write a method combinations which takes two arrays of strings and returns an array with all of the combinations of the items in them, listing the first items first.

def combinations(array1, array2)
  new_array =[]

  array1.each do |item|
    array2.each do |return_item|
      new_array << item + return_item
    end
  end
  return new_array
end


#test
#puts combinations(["tree","bark"], ["test","doll","grapes"] )
