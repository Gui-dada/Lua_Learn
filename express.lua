-- local a = 100
-- local b = 200
-- print("a =",a,"b =",b)

-- a,b=b,a

-- print("a =",a,"b =",b)

-- local a,b,c,d,e,f,g = 1,2,3,4,5
-- print(a,b,c,d,e,f,g)

-- -- a = b = 1 错误

-- -- Arithmetic

-- print(10/3.0)
-- print(10%3.3)

-- print(2>4)
-- print(2==2)
-- print(2~=2)

-- print("abc"=="Abc")
-- print("abc"~="Abc")

-- print(1=="1")
-- print(1+"1")
-- print(1+'1')

local t1={x=1,y=2}
local t2={x=1,y=2}
local t3 = t1
if t1~=t2 then
	print("t1~=t2")
else
	print("t1==t2")
end
if t1~=t3 then
	print("t1~=t3")
else
	print("t1==t3")
end