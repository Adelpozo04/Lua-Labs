--Adrian
local firstName, lastName = 'Joe', 'Smith'

print(firstName, lastName)

--Adrian
local command = "If you want to succeed in life:&"
print(string.sub(command,0,31))

local directions = {"study", "?????","profit"}

for index, action in ipairs(directions) do
    print(string.format(directions[index],index))
end