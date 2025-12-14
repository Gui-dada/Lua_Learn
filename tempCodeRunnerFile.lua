-- local a = nil
-- local b=100

-- print(a,b)


do
    print("do end...")
end


function add(a, b)
    return a + b
end

print(add(1, 2))


local x = 10
if x > 10 then
    print("x>10")
else
    print("x<=10")
end
