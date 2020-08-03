def repeatedString(s, n)
  s == 'a' ? n : (s.count('a') * (n / s.length)) + s[0..((n % s.length) - 1)].count('a')
end

p repeatedString('abc', 10)
