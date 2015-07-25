#!/usr/bin/ruby

class Being
    def initialize
        @is = true
    end
    def say
        "I am being"
    end
end

b = Being.new

puts b.method :say

puts b.instance_variable_get :@is

puts Symbol.all_symbols
