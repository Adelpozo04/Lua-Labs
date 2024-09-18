
local numericalArray = {3,2,6,5,4,1,7,9,10,8}


function RegresiveOrder (a, ini, fin)
    

    local diff = fin - ini

    local mid = fin/2

    if  diff == 0 then

        return a

    elseif diff == 1 then

        print("enters 1")

        if a[0] < a[1] then           
            return {a[0], a[1]}
        else
            return {a[1], a[0]}
        end
    else

        print("enters other")

        local aStart = RegresiveOrder(a, ini, mid)
        local aEnd = RegresiveOrder(a, mid, fin)

        return Combine(aStart, aEnd)

    end

end

function Combine (a, b)

    local aL = #a
    local bL = #b

    local aCount = 0
    local bCount = 0

    local c = {}

    

    while aCount < aL and bCount < bL do
       
        if a[aCount] < b[bCount] then
            
            c.insert(a[aCount])
            aCount = aCount + 1;

        else

            c.insert(b[bCount])
            bCount = bCount + 1;

        end
        
    
    end

    if aCount < aL then
        
        while aCount < aL do
            c.insert(a[aCount])
            aCount = aCount + 1;
        end

    else

        while bCount < bL do
            c.insert(b[bCount])
            bCount = bCount + 1;
        end

    end

    return c

end

print(#numericalArray)

local combineTest = Combine({4, 7}, {6, 3});

for index, action in pairs(combineTest) do
    
    print(combineTest[index])

end