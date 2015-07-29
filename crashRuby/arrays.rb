#!/usr/bin/ruby

nums = [1, 2, 3, 4, 5]

nums.each do |n|
    puts n
end

letters = Array.new
letters.push 'a'
letters.push 'b'
letters.push 'c'
letters.push 'd'
letters.push 'e'
letters.push 'f'

puts letters

animals = %w(donkey dog cat dolphin eagle)
integers = [1, 2, 3, 4, 5]

puts integers.inspect
puts animals.inspect

numbers = [1, 2, 3, [2, 4, 6, [11, 12]]]
puts numbers.inspect
puts numbers[3][0]
puts numbers.flatten!.inspect

mylist = %w{ a b c d e f g h}
puts mylist.first
puts mylist.last
puts mylist.at(3)
