#!/usr/bin/ruby

class Being
    def initialize
        puts "Being is created"
    end
end

# all data members are private in Ruby
# access modifiers are only for methods
class Person < Being
    @@ALIVE = true

    def initialize name, favorite_color='blue'
        @favorite_color = favorite_color
        @name = name
    end

    def get_name
        @name
    end

    def get_favorite_color
        @favorite_color
    end

    def is_alive
        @@ALIVE
    end
end

def foo
    "sending foo to #{@name}"
end

Being.new
p1 = Person.new "Jane"
puts p1.get_name +  "'s favorite color is " +  p1.get_favorite_color

p2 = Person.new "Paul", "red"
puts p2.get_name +  "'s favorite color is "+  p2.get_favorite_color

puts p2.send :foo
puts p2.is_alive
