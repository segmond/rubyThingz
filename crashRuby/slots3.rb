#!/usr/bin/ruby

class Slot
    def initialize
        @slots = [
            [3, 3],
            [2, 3],
            [1, 3],
            [2, 3],
            [0, 3],
            [3, 3]]
    end

    def print_slots
        @slots.each do |n|
            puts n.inspect
        end
    end

    def num_of_open_slot pos
        return @slots[pos][1] - @slots[pos][0]
    end

    def fill_slot pos, n_slots
        puts "--fill_slot #{pos} with #{n_slots}"
        if @slots[pos][0] <= (@slots[pos][1] - n_slots) then 
            @slots[pos][0] = @slots[pos][0] + n_slots 
            return true
        end
    end

    def reserve pos, num
        previous_pos = pos
        while true do
            n_slots = num_of_open_slot pos
            if n_slots >= num then
                if fill_slot pos, num then
                    return
                end
            else
                pos += 1
            end
        end
    end
end

s = Slot.new
s.print_slots

puts s.reserve 0, 3

s.print_slots
