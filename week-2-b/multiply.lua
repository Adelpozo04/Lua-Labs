--Adrian
local firstArray = {1,2,3,4,5}
local secondArray = {6,7,8,9,10}

local metatable = {__mul = function (a, b)
    local result = {}
    
    if #a == #b then
        for index, value in ipairs(a) do
            
            result[index] = a[index] * b[index]

        end
    end
    

    return result
end}
-- overload the addition operator to concatenate arrays
setmetatable(firstArray, metatable)


local result = firstArray * secondArray
print(result)
for i, num in ipairs(result) do
    print(num) -- 6,14,24,36,50
end