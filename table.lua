-- local arr ={1,2,3,4,5,6,7}

-- local arr2 ={"lua",12,"wasd",456,"abcd",true,false,nil,{}}

-- for i = 1, 9 do
--     print(arr2[i])
-- end

-- local arr3 = {}
-- for i = -5, 5, 2 do
--     arr3[i] = i*10
-- end
-- for i = -5, 5, 2 do
--     print(arr3[i])
-- end

local matrix = {{1,2,3,4},{5,6,7,8},{9,10,11,12},{13,14,15,16}}

for i = 1, 4, 1 do
    for j = 1, 4, 1 do
        io.write(matrix[i][j]," ")
    end
    io.write("\n")
end