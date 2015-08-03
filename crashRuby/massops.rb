#!/usr/bin/ruby
#
nums = [1, 3, 2, 6, 7, 12, 8, 15]

selected = nums.select do |e|
    e  > 10
end

puts selected.inspect

collected = nums.collect do |e|
    e < 10
end

puts collected.inspect

mapped = nums.map do |e|
    e * 2
end
puts mapped.inspect

puts nums.sort.inspect
puts nums.reverse.inspect
puts nums.shuffle.inspect


