# ASSESSMENT 5: Ruby Coding Practical Questions

# --------------------1) Create a class called Bike that is initialized with a model, wheels, and a frame size. The default number of wheels is 2. Create a get_info method that returns a sentence with all the data about each bike object.

class Bike
    attr_accessor :model, :wheels, :frame_size
    def initialize (model, frame_size)
        @model = model
        @wheels = 2
        @frame_size = frame_size
    end

    def get_bike_info
        @model
        @wheels
        @frame_size
    end

    def get_info
       puts `my bike is a #@model it has #@wheels and its size is #@frame_size`
    end
end

# Expected output example: 'The Trek bike has 2 wheels and a 168cm frame.'

bike1 = Bike.new "Trek" , "168cm"

# p bike1.get_bike_info
p bike1.model
p bike1.wheels
p bike1.frame_size

p get_info 



# p get_bike_info
# p get_info bike1

# -------------------2) Add a bell to the bike class and create the ability to ring the bell when the method is called.





# Expected output example: my_bike.ring_bell => 'Ding ding!'


# -------------------3) Add a speedometer to the Bike class. The speed should be initialized at 0.





# Expected output example: my_bike.speed => 0


# -------------------4) Add the ability to pedal faster. The pedal_faster method should increase the speed by a particular amount.





# Expected output example: my_bike.pedal_faster 10 => 10


# -------------------5) Add the ability to brake. The brake method should decrease the speed by a particular amount. The bike cannot go negative speeds.





# Expected output example: my_bike.brake 15 => 0
