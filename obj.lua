-- Shape =
-- {
--     _width = 100,
--     _height = 200,
-- }

-- Shape.getWidth = function (this)
--     return this._width
-- end

-- print(Shape._width)
-- print(Shape._height)

-- print(Shape.getWidth(Shape))


Shape =
{
    _width = 100,
    _height = 200,
}

-- Shape.getWidth = function (self)
--     return self._width
-- end

function Shape:getWidth()
    return self._width
end

-- Shape.getHeight = function (this)
--     return this._height
-- end

function Shape:getHeight ()
    return self._height
end

a,Shape = Shape,nil

print(a._width)
print(a._height)

-- print(a.getWidth())  a:function  语法糖
print(a:getWidth())

print(a.getHeight(a))
