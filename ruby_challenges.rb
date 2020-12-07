# ASSESSMENT 5: Ruby Coding Practical Questions

# --------------------1) Create a class called Bike that is initialized with a model, wheels, and a frame size. The default number of wheels is 2. Create a get_info method that returns a sentence with all the data about each bike object.

# Expected output example: 'The Trek bike has 2 wheels and a 168cm frame.'
class Bike

    # attr_accessor :model, :wheels, :frame_size
    def initialize (model, frame_size, wheels =2, speedometer = 0)
        @model = model
        @wheels = wheels
        @frame_size = frame_size
        @speedometer = speedometer
    end
# this doesn't work
#     def get_bike_info
#         @model
#         @wheels
#         @frame_size
#     end

#     def get_info
#        puts `my bike is a #@model it has #@wheels and its size is #@frame_size`
#     end


def model
    @model
end
def wheels
    @wheels
end
def frame_size
    @frame_size
end
def get_info
    p "The #{@model} bike has #{@wheels} wheels and a #{@frame_size} frame."
end

def speed
   p @speedometer
end
def pedal_faster
    @speedometer = @speedometer  + 10
    p @speedometer
end 
def brake
    if @speedometer > 15
        @speedometer = @speedometer - 15
        p @speedometer
    else  p 0
    end
end






# -------------------2) Add a bell to the bike class and create the ability to ring the bell when the method is called.

def ring_bell
    p "Ding Ding!"
end



# Expected output example: my_bike.ring_bell => 'Ding ding!'


# -------------------3) Add a speedometer to the Bike class. The speed should be initialized at 0.





# Expected output example: my_bike.speed => 0


# -------------------4) Add the ability to pedal faster. The pedal_faster method should increase the speed by a particular amount.

def pedal_faster
    @speedometer = @speedometer  + 10
    p @speedometer
end



# Expected output example: my_bike.pedal_faster 10 => 10


# -------------------5) Add the ability to brake. The brake method should decrease the speed by a particular amount. The bike cannot go negative speeds.


def brake
    if @speedometer > 15
        @speedometer = @speedometer - 15
        p @speedometer
    else  p 0
    end
end


# Expected output example: my_bike.brake 15 => 0



end

my_bike = Bike.new "Trek" , "168cm"
my_bike.get_info
my_bike.pedal_faster

my_bike.brake 
