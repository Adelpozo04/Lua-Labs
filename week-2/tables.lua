--Adrian

local fruitsByColour = {apples = "green",oranges = "orange", strawberries = "red"}

for index, action in pairs(fruitsByColour) do
    
    print(index .. " are typically " .. action)

end

print("\nAdding something else \n")

fruitsByColour.lemons = "yellow"

for index, action in pairs(fruitsByColour) do
    
    print(index .. " are typically " .. action)

end