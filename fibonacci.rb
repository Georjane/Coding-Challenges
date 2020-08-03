def fibonacci(num)
  arr = [1, 2]
  i = 0
  while arr.last < num
    arr << (arr[i] + arr [i + 1])
    i += 1
  end  
  arr.delete(arr.last) if arr.last > num
  results = []
  arr.each do |x| 
    results << x if x.even? 
  end
  puts results.reduce(0, :+)
end

puts fibonacci(100)


