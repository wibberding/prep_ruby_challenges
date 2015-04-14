#Write a method overlap which takes two rectangles defined by the coordinates of their corners, e.g. [[0,0],[3,3]] and [[1,1],[4,6]], and determines whether they overlap. You can assume all coordinates are positive integers. 

def overlap(array1, array2)
  # Finds the min and max values for each rectangle.
  min_x_rectangle1 = [array1[0][0], array1[1][0]].min
  max_x_rectangle1 = [array1[0][0], array1[1][0]].max
  min_y_rectangle1 = [array1[0][1], array1[1][1]].min
  max_y_rectangle1 = [array1[0][1], array1[1][1]].max

  min_x_rectangle2 = [array2[0][0], array2[1][0]].min
  max_x_rectangle2 = [array2[0][0], array2[1][0]].max
  min_y_rectangle2 = [array2[0][1], array2[1][1]].min
  max_y_rectangle2 = [array2[0][1], array2[1][1]].max

  # Tests for overlap in x plane.
  if min_x_rectangle2.between?(min_x_rectangle1+1, max_x_rectangle1-1)
    x_crosses = true
    puts "x1"
  elsif max_x_rectangle2.between?(min_x_rectangle1+1, max_x_rectangle1-1)
    x_crosses = true
    puts "x2"
  else
    x_crosses = false 
  end

  # Tests for overlap in y plane.
  if min_y_rectangle2.between?(min_y_rectangle1+1, max_y_rectangle1-1)
    y_crosses = true
    puts "y1"
  elsif max_y_rectangle2.between?(min_y_rectangle1+1, max_y_rectangle1-1)
    y_crosses = true
    puts "y2"
  else
    y_crosses = false
  end

  # Tests for overlap in both planes. If both are true rectangles overlap.
  if y_crosses && x_crosses
    return true
  else
    return false
  end

end


#overlap([[5,3],[3,4]], [[3,3],[5,5]])
puts overlap( [ [0,0],[3,3] ], [ [1,1],[4,5] ] ) # expect true
puts overlap( [ [0,0],[1,4] ], [ [1,1],[3,2] ] ) # expect false
