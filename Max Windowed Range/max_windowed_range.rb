def naive_solution(arr, window)

  current_max_range = nil
  window_len = window - 1

  arr.each_with_index do |el, idx|

    if idx + window_len < arr.length
      min = arr[idx..idx + window_len].min
      max = arr[idx..idx + window_len].max
      range = max - min

      if current_max_range.nil? || range > current_max_range
        current_max_range = range
      end

    end

  end

  current_max_range
end




p naive_solution([1, 3, 2, 5, 4, 8], 5)
