#!/usr/bin/ruby

puts "segmond".upcase
puts "segmond".size
puts "segmond".reverse
puts "segmond".capitalize
puts "Segmond".swapcase
puts "SEGmond".downcase

puts "segmond".include? "seg"
puts "segmond".include? "zoo"

word = "segmond"

puts word.empty?

puts word.start_with? "seg"
puts word.end_with? "seg"

puts "foobar\n\n".chomp

print "Are you sure you want to continue? (Yes/No) "
response = gets

if (response.downcase.chomp == "yes")
    puts "we continue"
else
    puts "adios"
end

puts response.inspect

puts "There are %d oranges in the basket." % 12
puts "%s, There are %d oranges and %d apples in the basket." % ["Sam", 12, 10]
