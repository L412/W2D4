def brute_force_two_sum(arr, target_sum)

  i = 0
  while i < arr.length - 1
    j = i + 1
    while j < arr.length
      if arr[i] + arr[j] == target_sum
        return true
      end
      j += 1
    end

    i += 1
  end

  false
end

#Starting with a pre sorted array.
#Would use merge sort for O(nlogn)
def sorting_two_sum(arr, target_sum)

  sorted_arr = arr #O(nlogn)
  sorted_arr.each_with_index do |el,idx|
    temp_arr = sorted_arr[0...idx] + sorted_arr[idx+1..-1]
    return true if temp_arr.bsearch {|x| x + el == target_sum}
  end
  false
end


def hash_map_two_sum(arr, target_sum)

  hash = Hash.new

  arr.each do |el|
    hash[el] = target_sum - el
  end

  hash.each do |k, val|
    if hash.has_key?(val) && k != val
      return true
    elsif k == val
      return false
    end
  end
end
# p sorting_two_sum([0, 1, 5, 7], 10)
p hash_map_two_sum([0, 1, 5, 7], 6)
