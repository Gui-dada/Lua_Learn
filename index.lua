-- local t = {}
-- local mt = { x = 10}
-- local other = { x = 100 ,y=1}
-- mt.__index = other


-- setmetatable(t, mt)
-- print(t.x)
local t = {}
local mt = { x = 10 }
local other = { x = 100, y = 1 }
mt.__index = function(t, k)
    if k == "x" then
        t[k] = 9999
        return 100
    else
        return 1
    end
end


setmetatable(t, mt)
print(t.x)
print(t.x)
