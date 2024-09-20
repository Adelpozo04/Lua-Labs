--Adrian

local myToStringArray = {"hello", "i", "am", "an", "array"}

local toStringMetaTable = {__tostring = function (array)
    local result = ""

    for index, value in ipairs(array) do
        result = result .. value .. " "
    end
 
    return result
end}

setmetatable(myToStringArray, toStringMetaTable)

print(myToStringArray)