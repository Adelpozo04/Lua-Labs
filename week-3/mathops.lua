--Adrian

-- Define a module table
local mathops = {}
-- Private helper function
local function isNumber(n)
 return type(n) == "number"
end
-- Public addition function
function mathops.add(a, b)

    assert(isNumber(a), "first data is not a number")
    assert(isNumber(b), "second data is not a number")
    return a + b
end
-- Public subtraction function
function mathops.subtract(a, b)
    assert(isNumber(a), "first data is not a number")
    assert(isNumber(b), "second data is not a number")
    return a - b
end

function mathops.multiply(a, b)
    assert(isNumber(a), "first data is not a number")
    assert(isNumber(b), "second data is not a number")
    return a * b
    
end

function mathops.divide(a, b)
    
    assert(isNumber(a), "first data is not a number")
    assert(isNumber(b), "second data is not a number")
    assert(b~=0, "you can not divide by 0")
    return a / b
    
end

--Adrian
-- Return the module table
return mathops