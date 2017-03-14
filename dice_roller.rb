numbers = []
sum = 0
change_slice = false

if rand(1..30) <= 7
  change_slice = true if rand(1..30) == 1
end

while sum < 55 do
  numbers = []

  7.times { numbers << rand(1..20) }

  numbers = change_slice ? numbers.sort.slice(2..6) : numbers.sort.slice(1..5)

  numbers << rand(1..20)
  sum = numbers.sum
end

numbers.each { |number| puts number }
