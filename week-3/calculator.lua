--Adrian

local mathops = require("mathops")

local calculator = {}

function calculator.add()

    print("Enter two numbers")
    local number = io.read("*n")
    local number2 = io.read("*n")
    
    local success, result = pcall(mathops.add, number, number2)
    
    if(success) then
        print(number .. " + " .. number2 .. " = " .. result)
    else
        print(result)
    end
end

function calculator.subtract()

    print("Enter two numbers")
    local number = io.read("*n")
    local number2 = io.read("*n")
    
    local success, result = pcall(mathops.subtract, number, number2)
    
    if(success) then
    print(number .. " - " .. number2 .. " = " .. result)
    else
    print(result)
    end

end

function calculator.multiply()

    print("Enter two numbers")
    local number = io.read("*n")
    local number2 = io.read("*n")
    
    local success, result = pcall(mathops.multiply, number, number2)
    
    if(success) then
    print(number .. " * " .. number2 .. " = " .. result)
    else
    print(result)
    end

end

function calculator.divide()

    print("Enter two numbers")
    local number = io.read("*n")
    local number2 = io.read("*n")
    
    local success, result = pcall(mathops.divide, number, number2)
    
    if(success) then
    print(number .. " / " .. number2 .. " = " .. result)
    else
    print(result)
    end

end

return calculator
    