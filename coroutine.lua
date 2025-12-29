-- print(type(coroutine))
-- local function f()
    
-- end
-- local co = coroutine.create(f)
-- print(type(co))


-- local cr
-- local function foo()
--     print(coroutine.status(cr))
-- end
-- local co = coroutine.create(foo)
-- cr = co
-- print(coroutine.status(co))
-- coroutine.resume(co)
-- print(coroutine.status(co))


local function foo(a,b)
    -- print("foo",a,b)
    -- print("foo",coroutine.status(co))
    -- -- return a+b,a-b
    -- coroutine.yield(a+b,a-b)
    print("co before yield ", a, b)
    local x, y = coroutine.yield(a + b, a - b)
    print("co after yield ", x, y)
end
co = coroutine.create(foo)

print("_G",coroutine.resume(co,100,200))
print("_G",coroutine.status(co))
print("_G",coroutine.resume(co,1,2))