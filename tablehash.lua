-- local a = {}
-- local k = "x"
-- -- a.x = 10
-- -- a[x] =10
-- a[k] = 10
-- print(a.k) -- a.k==a["k"]
-- print(a.x) -- a.k==a["x"]
-- print(a[k])
-- print(a["x"])

-- local a = { i = 100, j = 200 }
-- print(a.i)
-- print(a["i"])
-- local k = "j"
-- print(a.k)
-- print(a[k])


-- local i = 10; 
-- local j = "10"; 
-- local k = "+10"; -- k = "x10"
-- local a = {}
-- a[i] = "numberkey"
-- a[j] = "stringkey"
-- a[k] = "anotherstringkey"
-- print(a[i])           -->numberkey
-- print(a[j])           -->stringkey
-- print(a[k])           -->anotherstring key
-- print(a[tonumber(j)]) -->number key
-- print(a[tonumber(k)]) -->number key
-- a = {}
-- a[2.0] = 10           -->float key
-- a[2.1] = 20
-- print(a[2])
-- print(a[2.0])
-- print(a[2.1])


-- a = {}
-- a["x"] = 10
-- b = a         -- 'b' refers to the same table as 'a'
-- print(b["x"]) --> 10
-- b["x"] = 20
-- print(a["x"]) --> 20
-- a = nil       -- only 'b' still refers to the table
-- print(b["x"])
-- b = nil       -- no references left to the table
-- print("end debug")

local hashtable = { x = 1, y = 1, z = 1, 1, 2, 3, 4, 5, 6, 7, 8, nil }
-- for index, value in ipairs(hashtable) do
--     io.write(index,"=",value," ")
-- end
for key, value in pairs(hashtable) do
    io.write(key,"=",value," ")
end

-- local table = {10,20,30,40,50}
-- for index, value in ipairs(table) do
--     io.write(index," ",value," ")
-- end
-- for key, value in pairs(table) do
--     io.write(key," ",value," ")
-- end