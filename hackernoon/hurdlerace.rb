def hurdleRace(k, height)
  return k >= height.sort.last ? 0 : (height.sort.last - k)
end

p hurdleRace(4, [2, 7, 3])