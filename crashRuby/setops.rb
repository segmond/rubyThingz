#!/usr/bin/ruby

A = [1, 2, 3, 4, 5]
B = [4, 5, 6, 7, 8]

union = A | B
isect = A & B
diff1 = A - B
diff2 = B - A
sdiff = (A - B) | (B - A)

puts "Union #{union}"
puts "Intersection #{isect}"
puts "Diff of A-B #{diff1}"
puts "Diff of B-A #{diff2}"
puts "Symmetric Diff  #{sdiff}"
