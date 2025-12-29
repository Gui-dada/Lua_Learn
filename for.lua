-- https://www.lua.org/manual/5.2/manual.html#3.3.5
-- for var_1,...,var_n in explist 
-- do 
-- block  
-- end
-- do
--     local f, s, var = explist
--     while true do
--         local var_1, ···, var_n = f(s, var)
--         if var_1 == nil then break end
--         var = var_1
--         block
--     end
-- end

-- ipairs的底层实现
-- local arr = {"lua","hello lua",nil,"lualearning"}
-- do
--     local _f,_s,_v = ipairs(arr)
--     while true do
--         local k,v = _f(_s,_v)
--         if(k==nil) then
--             break
--         end
--         _v = k
--         print(k,v)
--     end
-- end
-- end


-- local function suqare(mx,idx)
--     if idx < mx then
--         idx = idx+1
--         return idx,idx*idx
--     end
-- end

-- for i,n in suqare,3,0 do
--     print(i,n)
-- end

