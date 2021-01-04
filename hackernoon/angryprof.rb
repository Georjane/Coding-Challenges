def angryProfessor(k, a)
  p = a.count{|x| x <= 0}
  return p < k ? 'YES' : 'NO'
end