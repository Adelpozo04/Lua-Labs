--Adrian

local priorityValues = {
    high = 4, medium = 3, low = 2, lowest = 1, highest = 5
}

local severities = {"high","lowest","highest", "medium", "low"}

table.sort(severities, function (a,b) 
   
    return priorityValues[a] < priorityValues[b]

end)

for i, severity in ipairs(severities) do
    print(severity)
end