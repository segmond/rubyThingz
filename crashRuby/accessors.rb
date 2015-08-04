#!/usr/bin/ruby

class Car
    CLASS_CONST = "our class constant"

    attr_reader :computer, :name, :price
    attr_writer :name, :price
    attr_accessor :model

    def initialize
        @computer = "puter"
    end

    def to_s
        "computer : #{@computer}, name : #{@name}, model : #{@model}, price : #{@price}"
    end
end

c1 = Car.new
# c1.computer "puter"       # can't access from here, it's only a reader
c1.name = "Volvo"
c1.model = "240"
c1.price = 2500
p c1
puts c1

puts Car::CLASS_CONST

