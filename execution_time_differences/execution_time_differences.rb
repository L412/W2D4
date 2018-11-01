LIST = [ 0, 3, 5, 4, -5, 10, 1, 90 ]


#This one is for O(n^2)
def my_min_1(arr)
  min = arr[0]
  arr.each do |el1| #O(n)
    arr.each do |el2| #O(n)
      if el1 < el2 && el1 < min
        min = el1
      end
    end
  end

  min
end



#This one is for  O(n)
def my_min_2(arr)
  min = arr[0]

  arr.each do |el| #O(n)
    if el < min
      min = el
    end
  end
  min
end

p my_min_2(LIST)
