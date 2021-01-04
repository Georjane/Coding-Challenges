#!/bin/ruby

t = gets.strip.to_i
(0..t - 1).each do |_a0|
  n = gets.strip.to_i

  arr = [1, 2]
  i = 0
  while arr.last <= n
    arr << (arr[i] + arr [i + 1])
    i += 1
  end
  arr.delete(arr.last) if arr.last > n
  results = []
  arr.each do |x|
    results << x if x.even?
  end
  puts results.reduce(:+) unless results.empty?
end
