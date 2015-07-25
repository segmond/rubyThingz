#!/usr/bin/ruby

# sign
puts +2
puts -2

# resolution, member access operators
class MyMath
    Pi = 3.1415926535
end

module People
    Name = "John"
end

puts MyMath::Pi
puts People::Name

# dot operator
class Person
    def initialize name, age
        @name = name
        @age = age
    end

    def info
        "#{@name} is #{@age} years old"
    end
end

person = Person.new "Jane", 25
puts person.info

# concatenating
puts "Hello" + " World"
puts "Hello".+ " World"
puts "Hello" << " World"

# range 
p (1..5).to_a
p (1...5).to_a
p ('b' .. 'k').to_a
