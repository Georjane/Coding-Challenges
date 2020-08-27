# doesn't pass all test cases yet

def palindromeIndex(s)
  return -1 if s == s.reverse
  return 0 if s[1..(s.length - 1)] == s[1..(s.length - 1)].reverse
  return (s.length - 1) if s[0..(s.length-2)] == s[0..(s.length-2)].reverse
  i = 0  
  x = s.length / 2
  while i < x
    j = i + 1
      if s[i] != s[s.length - j] && s[i] != s[s.length - (j + 1)] && s[i+1] != s[s.length - j]
        return -1 
       elsif s[i] != s[s.length - j] && s[i+1] == s[s.length - j]
        strig = s.split('')
        strig.delete_at(i)
        return strig == strig.reverse ? i : -1
      elsif s[i] != s[s.length - j] && s[i] == s[s.length - (j + 1)]
        strig = s.split('')
        strig.delete_at(j+1)
        return strig == strig.reverse ? j+1 : -1
      end
    
    i += 1
  end
end

# -1, -1, 4, 2, 4, 2, -1
puts palindromeIndex('abccdca')
puts palindromeIndex('aacaaaaeba')
puts palindromeIndex('abbac')
puts palindromeIndex('ababba')
puts palindromeIndex('abccdba')
puts palindromeIndex('abdccba')
puts palindromeIndex('abc')
