numbers = []
sum = 0
change_slice = false
change_add = false
continue = ''

while continue != 'yes' do
  random_number = rand(1..30)
  if random_number <= 7
    change_slice = true if rand(1..30) == 1
  elsif (24..30).include?(random_number)
    change_add = true
  end

  while sum < 55 do
    numbers = []

    7.times { numbers << rand(1..20) }

    numbers = change_slice ? numbers.sort.slice(2..6) : numbers.sort.slice(1..5)

    if change_add
      numbers << 25
    else
      numbers << rand(1..20)
    end

    sum = numbers.sum
  end

  puts "Your set is: #{numbers}. Are you satisfied?"
  continue = gets.chomp
end
