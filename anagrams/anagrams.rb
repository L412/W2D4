# O(n!)
def anagrams_1?(str1, str2)
  perms = str1.chars.permutation.to_a
  perms.map! {|arr| arr.join('')}.include?(str2)
end

def anagrams_2?(str1, str2)

  str1.chars.each do |char|
    i = str2.index(char)
    return false if i.nil?
    str2 = str2[0...i] + str2[i + 1..-1]
  end

  true
end

p anagrams_2?("elvis", "lives")
