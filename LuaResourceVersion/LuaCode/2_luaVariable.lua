--[[
    Lua 变量有三种：全局变量，局部变量，表中的域
    Lua 中变量默认为全局变量，只有主动用 local 修饰才会变成局部变量
    未赋值的变量的值均为 nil
]]

a = 1
local b = 2

function func1()
    c = 3
    local d = 4
    print(c, d)  -- 3  4
    print()
end

func1()
print(c, d)  -- 3  nil
print()

do
    local a = 5
    b = 6
    print(a, b)  -- 5  6
end
print()

print(a, b)  -- 1  6
print()


-- Lua 可以同时对多个变量赋值
a, b = 7, 8
print(a, b)  -- 7  8
print()

-- 赋值语句先计算右边的所有值然后进行赋值，所以也可以进行 swap 操作
a, b = b, a
print(a, b)  -- 8  7
print()

-- 赋值个数对不上的时候，Lua 会进行相印的处理
-- 右边的值少了会补 nil
x, y, z = a, b
print(x, y, z)  -- 8  7  nil
print()

-- 左边的值少了会自动忽略多余的
p, q = x, y, z
print(p, q)  -- 8  7
print()


-- 可以用多值赋值来接收返回多个值的函数
function func2()
    local val1 = 9
    local val2 = 10
    return val1, val2
end
v1, v2 = func2()
print(v1, v2)  -- 9  10
print()


-- 表的索引有两种方式，一种是用 []，还有一种是 .
a = {}
a["key"] = "value"
print(a["key"])  -- "value"
print(a.key)  -- "value"
-- 类似于 gettable_event(a,"key")
print()