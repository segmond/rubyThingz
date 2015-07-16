#!/usr/bin/ruby
x = 1

def method1
    x = 5
    puts x
end

method1

p x

def rectangle_area a, b
    puts local_variables
    return a * b
end

puts rectangle_area 5, 6

def method1
    
    def method2
                
        def method3
            m5, m6 = 3
            puts "Level 3"
            puts local_variables
        end            
        
        m3, m4 = 3
        puts "Level 2"
        puts local_variables
        method3    
    end        
    
    m1, m2 = 3
    puts "Level 1"
    puts local_variables
    method2
            
end

method1
