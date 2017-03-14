numbers = []

7.times { numbers << rand(1..20) }
numbers.sort.slice(1..5).each { |number| puts number }
