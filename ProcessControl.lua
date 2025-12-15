-- do
--     print("do end...")
-- end


-- function add(a, b)
--     return a + b
-- end

-- print(add(1, 2))


-- local x = 10
-- if x > 10 then
--     print("x>10")
-- else
--     print("x<=10")
-- end

-- score = 69

-- if score >= 90 then
--     print("A")
-- elseif score >= 80 then
--     print("B")
-- elseif score >= 70 then
--     print("C")
-- elseif score>= 60 then
--     print("D")
-- else
--     print("Fail to pass ")
-- end

----------循环----------------

-- local sum = 0
-- local i = 0
-- while i <= 100 do
--     sum = sum + i
--     i = i + 1
-- end
-- print("while : ", "i=", i, "sum =", sum)

-- sum = 0
-- i = 0
-- repeat
--     sum = sum + i
--     i = i + 1
-- until i > 100
-- print("repeat : ", "i=", i, "sum =", sum)


--- continue 不存在
-- local arr = {10,20,30,nil,50,key ="xxxx",60,70,80,90,100}

-- for i = 1, 10, 2 do
--     print(arr[i])
-- end

-- for i = 1, 10 do
--     io.write(i," ")
-- end

--- 泛型迭代器
--- ipairs pairs

-- for index, value in ipairs(arr) do
--     print("ipairs :",index,value)
-- end

-- for key, value in pairs(arr) do
--      print("pairs :",key,value)
-- end

-- ::lable::
-- do
--     print("xxxx")
-- end

-- goto lable

-- goto ok

-- do
--     local i = 1
--     print(i)
--     ::note::
--     i = i + 1
--     ::ok::
-- end


-- function func()
--     goto ok
--     local i =1
--     print(i)
--     i=i+1
-- end

-- ::ok::

--- goto只能跳转到同级作用域

--- goto continue案例
-- local i = 0
-- while i < 10 do
--     ::redo::
--     i = i + 1

--     if i % 2 == 1 then
--         goto continue --条件不满足,下一个continue
--     else
--         print(i)
--         goto redo --条件满足,再来一次redo
--     end
--     ::continue::
-- end

--- 应用 状态机
goto room1
::room1::
do
    print("in room1")
    local move = io.read()
    if move == "south" then
        goto room3
    elseif move == "east" then
        goto room2
    else
        print("invalidmove")
        goto room1 --stayin the same room
    end
end
::room2::
do
    print("in room2")
    local move = io.read()
    if move == "south" then
        goto room4
    elseif move == "west" then
        goto room1
    else
        print("invalidmove")
        goto room2
    end
end
::room3::
do
    print("in room3")
    local move = io.read()
    if move == "north" then
        goto room1
    elseif move == "east" then
        goto room4
    else
        print("invalidmove")
        goto room3
    end
end
::room4::
do
    print("in room4")
    print("Congratulations, you won!")
end
