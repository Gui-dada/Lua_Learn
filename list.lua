local arr = { 10, 20, 30, 40, 50, nil, 60, 70, 80, 90 }
local head = nil
local i = 1
while true do
    if (arr[i]) then
        head = { value = arr[i], next = head }
    else
        break
    end
    i = i + 1
end

-- while head do
--     print(head.value)
--     head = head.next
-- end

local function iterator(head, next)
    if next == nil then
        return head
    else
        return next.next
    end
end

local function traverse()
    return iterator, head, nil
end

for v in traverse(head) do
    print(v.value)
end
