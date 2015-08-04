#!/usr/bin/ruby

class Circle
    attr_accessor :radius

    def initialize radius
        @radius = radius
    end

    def +(other)
        Circle.new @radius + other.radius
    end

    def to_s
        "Circle #{@radius}"
    end
end

c1 = Circle.new 7
c2 = Circle.new 3

puts c1
puts c2
c3 = c1 + c2
puts c3
