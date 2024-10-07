--Adrian

local lfs = require("lfs")
local csv = require("csv")
local mathops = require("mathops")

for file in lfs.dir("C:/Users/adria/OneDrive/Documentos/GitHub/Lua-Labs/week-3/input") do

    if file ~= "." and file ~= ".." then

    local f = csv.open("C:/Users/adria/OneDrive/Documentos/GitHub/Lua-Labs/week-3/input/" .. file)
    print("Reading from " .. file)

    for fields in f:lines() do

        if fields[3] == "add" then

            local success, result = pcall(mathops.add, tonumber(fields[1]), tonumber(fields[2]))
    
            if(success) then
                print(fields[1] .. " + " .. fields[2] .. " = " .. result)
            else
                print(result)
            end

        elseif fields[3] == "subtract" then

            local success, result = pcall(mathops.subtract, tonumber(fields[1]), tonumber(fields[2]))
    
            if(success) then
                print(fields[1] .. " - " .. fields[2] .. " = " .. result)
            else
                print(result)
            end

        elseif fields[3] == "multiply" then

            local success, result = pcall(mathops.multiply, tonumber(fields[1]), tonumber(fields[2]))
    
            if(success) then
                print(fields[1] .. " * " .. fields[2] .. " = " .. result)
            else
                print(result)
            end

        elseif fields[3] == "divide" then

            local success, result = pcall(mathops.divide, tonumber(fields[1]), tonumber(fields[2]))
    
            if(success) then
                print(fields[1] .. " / " .. fields[2] .. " = " .. result)
            else
                print(result)
            end

        end
        

    end
    end
    end