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

def sorting_two_sum(arr, target_sum)

  

end

p brute_force_two_sum([0, 1, 5, 7], 6)
