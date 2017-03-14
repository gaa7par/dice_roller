numbers = []
sum = 0

while sum < 55 do
  numbers = []

  7.times { numbers << rand(1..20) }

  numbers = numbers.sort.slice(1..5)
  sum = numbers.sum
end

numbers.each { |number| puts number }
