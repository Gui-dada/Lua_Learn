local arr = {"lualearning","lua","language"}

-- for k, v in pairs(arr) do
--     print(k,v)
-- end


-- 子实现ipairs
--[[local function traverse(arr)
    local idx = 0
    local cnt = #arr
    return function(...)
        idx = idx + 1
        if (idx <= cnt) then
            return idx, arr[idx]
        end
    end
end

for k, v in traverse(arr) do
    print(k, v)
end]]


local function traverse(arr)
    local idx = 0
    local cnt = #arr
    return function(...)
        idx = idx + 1
        if (idx <= cnt) then
            return arr[idx]
        end
    end
end

for v in traverse(arr) do
    print(v)
end