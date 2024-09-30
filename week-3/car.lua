--Adrian
-- create class up here
local Car = {}

function Car:new(make, mark)

local car = {}
setmetatable(car, self)
self.__index = self
car.make = make
car.mark = mark
car.active = false
return car
end

function Car:beep()

print(self.make .. " " .. self.mark .. " says beep beep")

end

function Car:start()
    
    if self.active then
        
        print(self.make .. " " .. self.mark .. " is already active")

    else

        self.active = true
        print(self.make .. " " .. self.mark .. " is starting")
    end

end

--Adrian

function Car:stop()

    if self.active then
        
        self.active = false
        print("stopping " .. self.make .. " " .. self.mark)

    else

        print(self.make .. " " .. self.mark .. " is already stopped")

    end

end

-- Define the ElectricCar class, car class should be defined above in the same file
local ElectricCar = Car:new()

--Adrian
-- Constructor function to create a new Person object
function ElectricCar:new(make, model, batteryCapacityKwh, currentChargeKwh)

    local eCar = Car:new(make, model)

    setmetatable(eCar, self)

    self.__index = self

    self.batteryCapacityKwH = batteryCapacityKwh
    self.currentChargeKwH = currentChargeKwh

    return eCar

end

function ElectricCar:beep()

    print(self.make .. " " .. self.mark .. " says boopity boop (in an fancy way)")
    
end

--Adrian
function ElectricCar:charge(amount)

    self.currentChargeKwH = self.currentChargeKwH + amount

    if self.currentChargeKwH > self.batteryCapacityKwH then
        
        print("too much charge..... KABOOM!")

    else

        print("current charge level is " .. self.currentChargeKwH .. "%")

    end

    
end

-- use class below here :
local ford = Car:new("ford", "focus")
ford:beep()
ford:start()
ford:start()
ford:stop()
ford:stop()

local tesla = ElectricCar:new("Tesla", "Model S", 50, 20)
tesla:start()
tesla:beep()
tesla:charge(5)
tesla:charge(100)