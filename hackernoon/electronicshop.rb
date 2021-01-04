def getMoneySpent(keyboards, drives, b)
  cost = []
  arr = []
  keyboards.each do |k|
    i = 0
    while i < drives.length
      if k + drives[i] <= b
        arr << [k, drives[i]]        
      end
      i += 1
    end
  end
  arr.each {|x| cost << [x.sum, x]}
  
  return arr.empty? ? -1 : cost.sort.last[0]
end

p getMoneySpent([46, 50, 60], [5, 12, 0], 60)