-- local t = { x = 1 }

-- local mt = {}

-- setmetatable(t, mt)

-- -- 元表的index做访问操作 newindex做更新操作
-- -- rawset(t,k,v)将原表中添加元素
-- -- rawget()
-- mt.__newindex = function(t, k, v)
--     -- print("metatable __newindex t k v",t,k,v)
--     -- print("metatable __newindex operater.")
--     print("add new key:", k,"add new value:",v)
--     -- t[k] = v
--     rawset(t,k,v)
-- end
-- t.x = 100
-- print(t.x)
-- t.y = 200
-- print(t.y)


-------------------------------------
local t = { x = 1 }
local mt = {}
setmetatable(t, mt)
local other = {}
mt.__newindex = other
mt.__index = other

print(other.y)
print(t.y)
t.y = 100

print(other.y)
print(t.y)