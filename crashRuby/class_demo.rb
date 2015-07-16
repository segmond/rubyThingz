#!/usr/bin/ruby

class Detroit
    @@name = 'Detroit'
    @@state = 'MI'

    def initalize weather
        @weather = weather
    end

    def to_s
        puts "This is {@@name} in {@@state} and weather is {@weather}"
    end

    def in_michigan?
        #(@@state == 'MI')
        true
    end
end

d = Detroit.new 64
puts d.to_s
puts d.in_michigan?
