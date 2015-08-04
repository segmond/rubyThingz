#!/usr/bin/ruby

module Device
    def switch_on ; puts  self.class.name + " on" end    
    def switch_off ; puts  self.class.name + " off" end
end

module Volume
    def volume_up ; puts self.class.name +  " volume up" end    
    def vodule_down ; puts self.class.name +  " volume down" end
end

module Pluggable
    def plug_in ; puts self.class.name +  " plug in" end    
    def plug_out ; puts self.class.name +  " plug out" end
end

# mixin's with modules
class CellPhone
    include Device, Volume, Pluggable
   
    def ring
        puts self.class.name + " ringing"
    end    
end

class Microwave
    include Device, Pluggable

    def cook
        puts self.class.name + " cooking"
    end
end

cph = CellPhone.new
cph.switch_on
cph.volume_up
cph.ring

m = Microwave.new
m.switch_on
m.plug_in
m.cook
