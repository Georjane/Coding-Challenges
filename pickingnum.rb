a = [1, 1, 2, 2, 4, 4, 5, 5, 5]
def pickingNumbers(a)
  return a.length if a.sort.last - a.sort.first <= 1
  i = 1
  subarr = []  
  # while i < a.length 
  #   subarr << a.shift if a[i] - a[0] <= 1
  #   i += 1  
  # end
  newarr = a
  while !newarr.empty? do
    newarr = a
    f = newarr[0] 
    a.each do |x|
      if x - f <= 1
        subarr << x         
    end
    newarr = a - subarr
    # newarr
  end
end
subarr
end

p pickingNumbers(a)