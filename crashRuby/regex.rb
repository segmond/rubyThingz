#!/usr/bin/ruby

re = Regexp.new 'Jane'
p "Jane is hot".match re

p "Jane is hot" =~ /Jane/

p "Jane is hot".match %r{Jane}

puts "12, 911, 12, 111"[/\d{3}/]

puts "motherboard".gsub /board/, "land"

p "meet big deep nil need".scan /.[e][e]./

p "This is Sparta!".split(/\s/)

puts "Her name is Jane" =~ /name/

p $`    # text before match
p $&    # matched text
p $'    # text after last match

# /\bword\b/ set word boundaries, match whole word instead of word within a string
