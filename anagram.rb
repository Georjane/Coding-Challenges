# doesn't pass all test cases yet

def anagram(s)
  return -1 if s.length.odd?
  s1 = s[0..s.length/2 - 1].split('').sort.join
  s2 = s[s.length/2..s.length].split('').sort.join
  return 0 if s1 == s2
  s1.split('').delete_at(0)
  puts s1
  count = 0
  # i = 0
  # while i < s.length / 2
    
  #   # s1[i] == s2[i]
  #   # if s1 == s2
  #   #   count += 1
  #   #   return count
  #   # end
  #   # i += 1
  #   puts s1
  # end
  # return 0 if s1.split.all? = s2.split
  # sort
  # puts s1.split('').sort.to_s
  # puts s2.split('').sort.join
end

# 3 1 -1 2 0 1
puts anagram('aaabbb')
# puts anagram('ab')
# puts anagram('abc')
# puts anagram('mnop')
# puts anagram('xyyx')
# puts anagram('xaxbbbxx')