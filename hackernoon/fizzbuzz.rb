100.times do |i|
  i += 1
  if (i % 15).zero?
    puts 'FizzBuzz'
  elsif (i % 5).zero?
    puts 'Buzz'
  elsif (i % 3).zero?
    puts 'Fizz'
  else
    puts i
  end
end
