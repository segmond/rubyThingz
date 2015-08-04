#!/usr/bin/ruby

class Being
    def initialize
        puts "Being is created"
    end

private
    def think
        "think"
    end

protected
    def breath
        "breath"
    end
end

# all data members are private in Ruby
# access modifiers are only for methods
class Person < Being
    @@ALIVE = true

    def initialize name, favorite_color='blue'
        super()
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

    def doit
        puts think       # in most OOP, this will not be posible
        puts self.breath
        puts self.dance
        "doing it"
    end

protected
    def dance
        puts sing
        "dancing"
    end

private
    def sing
        "singing"
    end
end

def foo
    "sending foo to #{@name}"
end

p1 = Person.new "Jane"
puts p1.get_name +  "'s favorite color is " +  p1.get_favorite_color

p2 = Person.new "Paul", "red"
puts p2.get_name +  "'s favorite color is "+  p2.get_favorite_color

puts p2.send :foo
puts p2.is_alive
puts p2.doit

p Person.ancestors
