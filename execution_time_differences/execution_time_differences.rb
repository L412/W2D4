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


LIST2 = [2, 3, -6, 7, -6, 7]

def sub_sum_1(arr)
  subsets = []
  i = 0

  while i < arr.length
    j = i
    while j < arr.length
      subsets << arr[i..j]
      j += 1
    end
    i += 1
  end

  subsets.map! do |arr|
    arr.reduce(:+)
  end

  subsets.max
end


def sub_sum_2(arr)
  ongoing_sum = arr[0]
  current_best = arr[0]

  arr[1..-1].each do |el| #Big-O(n) because we iterate through array once
    ongoing_sum = 0 if ongoing_sum < 0
    ongoing_sum += el
    current_best = ongoing_sum if ongoing_sum > current_best
  end

  current_best
end


p sub_sum_2([2, 3, -6, 7, -6, 7])
