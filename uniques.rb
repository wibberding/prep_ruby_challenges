#Write a method uniques which takes an array of items and returns the array without any duplicates. Don’t use Ruby’s uniq method!

def uniques(array)
  returnedArray = array

  array.each_with_index do |item, index|
    array.each_with_index do |return_item, return_index|
      if ((item == return_item) && (index != return_index))
        returnedArray.delete_at(return_index)
      end
    end
  end
  return returnedArray
end



#test
#puts uniques([99,8,7,6,5,"Rabbit",true,5,4,3,2,1,44,33,22,true,44,55,66,"Apple",55,44,"Rabbit",33])