#!/usr/bin/ruby

x = 35
y = 0

begin
    z = x / y
    puts z
rescue => e
    puts e
    p e
end

age = 17

begin
    if age < 18
        raise 'Person is a minor'
    end
    puts 'Entry allowed'
rescue => e1    # catch equivalent
    puts e1
    p e1
ensure          # finally euivalent
    puts 'Have a good night'
end

class MyOwnError < StandardError ; end  # custom exception
raise MyOwnError, 'custom error'
