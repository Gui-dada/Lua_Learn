-- local t1 = {}
-- local t2 = {}

-- print("t1 adress:", t1)
-- print("t2 adress:", t2)

-- setmetatable(t1, t2) -- t1普通表，t2元表

-- print("t1 getmetatable adress", getmetatable(t1))
-- print("t2 getmetatable adress", getmetatable(t2))


-- local t1 = { 1, 2, 3 }
-- local t2 = { 4, 5, 6 }

-- local mt = {
--     __add = function(a, b) -- 注意：这里是两个下划线 __add
--         local n = #a
--         local res = {}
--         for i = 1, n do
--             res[i] = a[i] + b[i]
--         end
--         return res
--     end
-- }

-- setmetatable(t1, mt)
-- setmetatable(t2, mt)

-- local t3 = t1 + t2
-- print(t3[1])
-- print(t3[2])
-- print(t3[3])
-- -- 创建一个向量类
-- local Vector = {}

-- function Vector.new(x, y)
--     local v = {x = x or 0, y = y or 0}
--     setmetatable(v, Vector.mt)
--     return v
-- end

-- Vector.mt = {
--     __add = function(a, b)
--         return Vector.new(a.x + b.x, a.y + b.y)
--     end,

--     __sub = function(a, b)
--         return Vector.new(a.x - b.x, a.y - b.y)
--     end,

--     __mul = function(a, b)
--         if type(b) == "number" then
--             return Vector.new(a.x * b, a.y * b)
--         elseif type(a) == "number" then
--             return Vector.new(b.x * a, b.y * a)
--         else
--             return a.x * b.x + a.y * b.y  -- 点积
--         end
--     end,

--     __tostring = function(v)
--         return string.format("Vector(%f, %f)", v.x, v.y)
--     end
-- }

-- -- 使用
-- local v1 = Vector.new(1, 2)
-- local v2 = Vector.new(3, 4)

-- local v3 = v1 + v2  -- Vector(4, 6)
-- local v4 = v2 - v1  -- Vector(2, 2)
-- local v5 = v1 * 2   -- Vector(2, 4)
-- local dot = v1 * v2 -- 11 (点积)

-- print(v3)  -- 输出: Vector(4.000000, 6.000000)

local a = { x = 1, y = 2, z = 3 }
local b = { x = 1, y = 2, z = 3 }
if a == b then
    print("==")
else
    print("~=")
end

local mt = {}
mt.__eq = function(a, b)
    local lena = #a
    local lenb = #b
    if lena == lenb then
        for i = 1, lena do
            if (a[i] ~= b[i]) then
                return false
            end
        end
        return true
    else
        return false
    end
end

setmetatable(a, mt)
setmetatable(b, mt)
if a == b then
    print("==")
else
    print("~=")
end
