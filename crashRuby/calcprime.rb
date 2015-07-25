#!/usr/bin/ruby

nums = (4..50).to_a

puts "Prime numbers:"

print "2 3 "

nums.each do |i|
    print i, " "
    not_prime = false

    (2..Math.sqrt(i).ceil).each do |j|
        not_prime = true if i % j == 0
    end

    print i, " " unless not_prime
end

puts



