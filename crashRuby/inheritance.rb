#!/usr/bin/ruby

class Being
    def to_s
        "This is Being"
    end

    def get_id
        987
    end
end

class Living < Being
    def to_s
        "This is Living"
    end
end

l = Living.new

puts l
puts l.get_id
puts l.is_a? Being
puts l.is_a? Living
puts l.is_a? Object
