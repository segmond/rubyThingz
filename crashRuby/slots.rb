#!/usr/bin/ruby

class Slot
    def initialize
        @slots = [
            [2, 3],
            [3, 3],
            [0, 3],
            [3, 3],
            [0, 3]]
    end

    def print_slots
        @slots.each do |n|
            puts n.inspect
        end
    end

    def has_open_slot pos
        if @slots[pos][0] == @slots[pos][1] then
            return false
        else
            return true
        end
    end

    def fill_slot pos
        if @slots[pos][0] < @slots[pos][1] then 
            @slots[pos][0] = @slots[pos][0] + 1 
            return true
        end
    end

    def reserve pos, num
        previous_pos = pos
        while num > 0 do
            if has_open_slot pos then
                if fill_slot pos then
                    num -=  1
                else
                    return
                end
                    previous_pos = pos
            else
                if previous_pos != pos then
                    puts "none consecutive slot"
                    return
                end
                pos += 1
            end
        end
    end
end

s = Slot.new
s.print_slots

puts s.reserve 0, 2
s.print_slots
