def palindromeIndex(s)

  puts -1 if s == s.reverse
  # s.split(//)
  # puts s[1]!(s == s.reverse)
  i = 0
  while i < 2
    # arr = "helloyou"
    #  arr.delete!("hel") 
    # puts arr
    # s.delete!(s.index)
    arr = s.split(//)
    arr.delete(arr[i])
    puts arr
    i += 1
  end
  

  
end
palindromeIndex("aaab")