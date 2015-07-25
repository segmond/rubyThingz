#!/usr/bin/ruby


def check_light
    if @light == :on
        puts "The light is on"
    else
        puts "The light is off"
    end
end

@light = :on
check_light
@light = :off
check_light


