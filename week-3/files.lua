
-- Adrian
local lfs = require("lfs")
for file in lfs.dir(".") do
   print(file)
end