
local numericalArray = {3,2,6,5,4,1,7,9,10,8}


function RegresiveOrder (a, ini, fin)
    

    local diff = fin - ini

    local mid = math.floor(fin/2)

    if  diff == 1 then

        return a

    elseif diff == 2 then

        print("enters 1")

        if a[1] < a[2] then           
            return {a[1], a[2]}
        else
            return {a[2], a[1]}
        end
    else

        print("enters other " .. ini .. " / " .. mid .. " / " .. fin)

        local aStart = RegresiveOrder(a, ini, mid)

        local aEnd = RegresiveOrder(a, mid + 1, fin)

        return Combine(aStart, aEnd)

    end

end

function Combine (a, b)

    local aL = #a
    local bL = #b

    local aCount = 1
    local bCount = 1

    local c = {}

    while aCount <= aL and bCount <= bL do
       
        if a[aCount] < b[bCount] then
            
            table.insert(c, a[aCount])
            aCount = aCount + 1;

        else

            table.insert(c, b[bCount])
            bCount = bCount + 1;

        end

        for index, action in pairs(c) do
    
            print(c[index])
        
        end
        
        print("________________________")
    
    end

    if aCount <= aL then
        
        while aCount <= aL do
            table.insert(c, a[aCount])
            aCount = aCount + 1;
        end

    else

        while bCount <= bL do
            table.insert(c, b[bCount])
            bCount = bCount + 1;
        end

    end

    return c

end

print(#numericalArray)

local combineTest = RegresiveOrder(numericalArray, 1, #numericalArray)

for index, action in pairs(combineTest) do
    
    print(combineTest[index])

end