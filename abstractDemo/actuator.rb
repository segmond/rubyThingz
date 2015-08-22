#!/usr/bin/ruby

# http://www.objectmentor.com/resources/articles/abcpvf.pdf
class Actuator
    def activate
        raise 'abstract activate - please implement'
    end

    def deactivate
        raise 'abstract deactivate - please implement'
    end
end

class Indicator < Actuator
    def initialize 
        @state = "on"
    end
    def activate
        @state = "on"
        puts "indicator is on"
    end

    def deactivate
        @state = "off"
        puts "indicator is off"
    end
end

i = Indicator.new 
i.activate
i.deactivate
puts "\n"

class Indicator < Actuator
end

class Valve < Actuator
    def get_flow_rate
        raise 'abstract get_flow_rate - please implement'
    end
end

class SimpleValve < Valve

    def initialize flow_rate
        @flow_rate = flow_rate
        super()
    end

    def activate
        puts "simple valve has been opened"
    end

    def deactivate
        @flow_rate = 0
        puts "simple valve has been closed"
    end

    def get_flow_rate
        puts "simple valves flow rate is #{@flow_rate} per gallon"
    end
end

v = SimpleValve.new 700
v.activate
v.get_flow_rate
v.deactivate
v.get_flow_rate
puts "\n"

class SafetyValve < Valve
    @@max_flow_rate = 100
    def initialize flow_rate
        if flow_rate < @@max_flow_rate
            @flow_rate = flow_rate
        else
            puts "safety valve flow rate had an attempt to be set at #{flow_rate}, but is being limited to #{@@max_flow_rate}"
            @flow_rate = @@max_flow_rate
        end
        super()
    end

    def activate
        puts "safety valve has been opened"
    end

    def deactivate
        @flow_rate = 0
        puts "safety valve has been closed"
    end

    def get_flow_rate
        puts "safety valves flow rate is #{@flow_rate} per gallon"
    end
end

sv = SafetyValve.new 200
sv.activate
sv.get_flow_rate
sv.deactivate
sv.get_flow_rate
puts "\n"

class Motor < Actuator
    def initialize speed=100
        @speed = speed
    end

    def activate
        puts "motor has been started"
        puts "motor is running"
    end

    def deactivate
        @speed = 0
        puts "motor has been stopped"
    end

    def set_speed new_speed
        @speed = new_speed
        puts "motor has new speed set to #{new_speed}"
    end

    def get_speed
        puts "speed is #{@speed} rpm"
    end
end

m = Motor.new
m.activate
m.get_speed
m.set_speed 500
m.get_speed
m.deactivate
m.get_speed
puts "\n"
