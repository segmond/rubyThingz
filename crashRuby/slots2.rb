#!/usr/bin/ruby

class Slot
    def initialize
        @slots = [
            [2, 3],
            [2, 3],
            [0, 3],
            [2, 3],
            [3, 3],
            [0, 3]]
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
        if @slots[pos][0] < @slots[pos][1] then 
            @slots[pos][0] = @slots[pos][0] + n_slots 
            return true
        end
    end

    def reserve pos, num
        previous_pos = pos
        while num > 0 do
            n_slots = num_of_open_slot pos
            puts "#{n_slots} open at #{pos}"
            if n_slots > 0 then
                if num > n_slots then
                    request_slots  = n_slots
                else
                    request_slots = num
                end
                if fill_slot pos, request_slots then
                    puts "filled pos #{pos}  with #{request_slots}"
                    num -=  request_slots
                else
                    return
                end
                previous_pos = pos
            else
                if previous_pos != pos then
                    puts "none consecutive slot"
                    puts "#{previous_pos} #{pos}"
                    #return
                end
                pos += 1
            end
        end
    end
end

s = Slot.new
s.print_slots

puts s.reserve 0, 6

s.print_slots
