#!/usr/bin/ruby

counter = 10

until counter < 0
    puts counter
    counter -= 1
end

for i in 0..10 do
    puts i
end

cars = ['GM', 'BMW', 'Acura', 'Ford', 'Honda', 'Toyota']
for i in 0...cars.length
    puts cars[i]
end

cars.each do |c|
    puts c
end
