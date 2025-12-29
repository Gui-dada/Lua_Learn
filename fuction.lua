-- local function add(a,b,c,d,e)
    
-- end
-- add(1,"1",{})
-- local function Max(a, b)
--     if a > b then
--         return a
--     else
--         return b
--     end
-- end

-- print(Max(0.5, 0.6))

-- local function foo(a,b,c,d,e,f)
--     print(a,b,c,d,e,f)
--     return 1,2,3,4,5,6
-- end


-- foo(1,2)

-- local function average(...)
--     local sum = 0
--     local arg = { ... }
--     for k, v in ipairs(arg) do
--         sum = sum + v
--     end
--     return sum / #arg
-- end

-- print("the mean is", average(1, 2, 3, 4, 5, 6, 7, 8, 9, 10))

-- local function average(...)
--     local sum = 0
--     local n = 0
--     local arg = table.pack(...)
--     -- print("length:",arg.n)
--     for i = 1, arg.n do
--         if (arg[i] ~= nil) then
--             sum = sum + arg[i]
--             n = n + 1
--         end
--     end
--     return sum / n
-- end

-- print("the mean is", average(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, nil))

-- print(select(1,'a','b','c'))
-- print(select(2,'a','b','c'))
-- print(select(3,'a','b','c'))
-- print(select("#",'a','b','c'))


-- local function add(...)
--     local sum = 0
--     for i = 1, select("#", ...) do
--         sum = sum + select(i, ...)
--     end
--     return sum
-- end

-- print(add(1, 2, 3, 4, 5, 6, 7, 8, 9, 10))


-- 函数运算相关
-- local function f123()
--     return 1, 2, 3
-- end
-- local function f456()
--     return 4, 5, 6
-- end
-- print(f123())
-- print((f123()))
-- print(f456())
-- print((f456()))

-- print(f123(),"-",f456())
-- print(f456(),"-",f123())


-- print(table.unpack({1,2,3,4,5,6,7,8,9,10}))
-- print({1,2,3,4,5,6,7,8,9,10})
-- print(table.unpack({1,2,3,4,5,6,7,8,9,10},1,5))

local f = string.find
local src = {"hello lua","lua"}

-- print(f(table.unpack(src)))
print(string.find("hello lua","lua"))