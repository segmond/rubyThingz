#!/usr/bin/ruby

Dog = Class.new

def dog_sound
    "bark"
end

class Cat
    def sound
        "meow"
    end
end

puts Dog.class
puts Cat.class

felix = Cat.new
bob = Dog.new

puts felix.sound
puts bob.send :dog_sound

# open the eigenclass of the object and inject growl into it
class << bob
    def growl
        "growl"
    end
end

puts bob.growl

# http://madebydna.com/all/code/2011/06/24/eigenclasses-demystified.html
