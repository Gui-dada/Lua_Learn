
local other = {
    x = 100
}

local meta = {
    __index = other,
    x=10

}
local t = setmetatable({},meta)

print(t.x)