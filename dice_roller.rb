numbers = []
sum = 0

while sum < 55 do
  numbers = []

  7.times { numbers << rand(1..20) }

  numbers = numbers.sort.slice(1..5)
  numbers << rand(1..20)
  sum = numbers.sum
end

numbers.each { |number| puts number }
