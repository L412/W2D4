# O(n!)
def anagrams_1?(str1, str2)
  perms = str1.chars.permutation.to_a
  perms.map! {|arr| arr.join('')}.include?(str2)
end

#O(n^2)
def anagrams_2?(str1, str2)

  str1.chars.each do |char|  # O(2n) because chars, then each
    i = str2.index(char)  # .index is O(n)
    return false if i.nil?
    str2 = str2[0...i] + str2[i + 1..-1]
  end

  true
end

#O(n^2)
def anagrams_3?(str1, str2)

  sorted1 = str1.chars.sort.join("") #Big O(n^2)
  sorted2 = str2.chars.sort.join("") #Big O(n^2)

  sorted1 == sorted2
end

#O(n)
def anagrams_4?(str1, str2)
  counter_hash = Hash.new(0)

  str1.chars.each do |c|      #O(n)
    counter_hash[c.downcase] += 1
  end

  str2.chars.each do |c|      #O(n)
    counter_hash[c.upcase] += 1
  end

  ('a'..'z').each do |c| #O(1)
    return false unless counter_hash[c.upcase] == counter_hash[c]
  end

  true
end


p anagrams_4?("elvis", "lives")
