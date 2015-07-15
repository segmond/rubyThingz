#!/usr/bin/ruby

# first ruby code

=begin
    This is a multiline comment
    author - Segmond
    ruby sucks
=end

$everywhere = 'global variable'

Who = "World" # Constants begins with capital letter
num = 5 # variable

i = 0
while i < num do
    if true then
        print "Hello ruby "
        puts Who
    end
    i += 1
end

puts [2, -1, -4, 0].delete_if { |x| x < 0 }

[1,2,3].each do |e|
    puts e
end

numbers = [10,11,12,13,14,15]
numbers.each { |i| puts i }
