# fptr = File.open(ENV['OUTPUT_PATH'], 'w')

# s = gets.to_s.rstrip

# n = gets.to_i
# Complete the repeatedString function below.
# def repeatedString(s, n)
#   arr = ""
#   if s.split(//).all? {|x| x == "a"}
#     results = n
#   else 
#     while arr.size < n
#       s.split(//).each { |x| arr << x}
#     end     
#     ok = arr.slice!(0..n)
#     results = ok.count "a"
#   end
#   results
# end
def repeatedString(s, n)
  s.count "a"
  

end
puts repeatedString("hollaa", 100)

# result = repeatedString s, n

# fptr.write result
# fptr.write "\n"

# fptr.close()