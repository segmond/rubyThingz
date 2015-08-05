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

pattern = /[fs]it/
words = %w/ sit MIT fit fat lot pad/

words.each do |word|
    if word.match pattern
        puts "#{word} matches the pattern"
    else
        puts "#{word} doesn't matches the pattern"
    end
end

# quantifiers
#
# ? - 0 or 1 match
# * - 0 or more
# + - 1 or more
# {n} exactly n
# {n,} n or more
# {,n} n or less
# {n,m} range n to m


emails = %w/ luke@gmail.com andy@yahoo.com 23214sdj^as
    f3444@gmail.com /
    
pattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9-]+\.[a-zA-Z.]{2,5}$/

emails.each do |email| 

    if email.match pattern
        puts "#{email} matches"
    else
        puts "#{email} does not match"
    end
    
end
