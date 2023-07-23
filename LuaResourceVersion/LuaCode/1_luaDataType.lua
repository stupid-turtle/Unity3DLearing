--[[
    nil
    boolean
    number
    string
    function
    userdata
    thread
    table
]]

-- nil
-- 只表示空

-- 打印未赋值的变量，输出nil
print("---- print nil ----")
print(b)  -- nil
print(type(b))  -- nil
print()

b = 10
print(b)  -- 10
print(type(b))  -- number
print()

-- 想删除一个对象，只需要将对象赋值为nil
print("---- delete object ----")
b = nil
print(b)  -- nil
print(type(b))  -- nil
print()

-- 对于表中的对象也可以这样操作
print("---- delete table object ----")
tab1 = {key1 = "val1", key2 = "val2"}
for k, v in pairs(tab1) do
    print(k .. " - " .. v)
end
print()

tab1.key1 = nil
for k, v in pairs(tab1) do
    print(k .. " - " .. v)
end
print()

-- nil 进行比较时需要加上双引号""
print("---- nil compare ----")
print(type(b))  -- nil
print(type(b) == nil)  -- false
print(type(type(b)))  -- string
print(type(b) == "nil")  -- true
print()



-- boolean
-- 只有两个值：true 和 false
print("---- boolean ----")
print(type(true))  -- boolean
print(type(false))  -- boolean
print(type(nil))  -- nil


-- nil 和 false 为假，其他都为真(包括数字0)
print("---- nil and false test ----")
if false or nil then
    print("at least one is true")
else
    print("false and nil are false!")
end
print()
-- false and nil are false!

print("---- number 0 test ----")
if 0 then
    print("number 0 is true")
else
    print("number 0 is false")
end
print()
-- number 0 is true



-- number
-- Lua 默认只有一种 number 类型 -- double(双精度) 类型(64位双精度浮点)
-- 默认类型可以修改 luaconf.h 中的定义



-- string
-- 字符串由一对双引号或单引号来表示
print("---- string ----")
string1 = 'string1'
print(string1)
string2 = "string2"
print(string2)
print()

-- 可以用[[]]表示一段字符串
string3 = [[
two line
string3
]]
print(string3)
print()

-- 字符串拼接 ..
print(string1 .. string2)  -- string1string2
print()

print("123" .. 456)  -- 123456
print()

print(123 .. 456)  -- 123456
print()

-- 对字符串使用数学运算也会尝试进行数字处理
print("2" + 6)  -- 8
print()

print("3" * 5)  --15
print()

-- 可以对字符串使用 # 来计算长度
print(#string1)  -- 7
print()

print(#string3)  --17  - 13个字母 1个数字 1个空格 2个换行
print()



-- table
print("---- table ----")

-- 初始化
-- 空表
tab1 = {}

-- 带初始值的表
tab2 = {"apple", "pear", "orange", "grape"}
print(tab2)  -- 打印的是地址
print()

-- 表实际上是一个关联数组(associative arrays)，类似于 map
a = {}
a["key"] = "value"
key = 10
a[key] = 22
a[key] = a[key] + 11  -- 不能 +=
for k, v in pairs(a) do
    print(k .. " : " .. v)
end
print()
--[[
    key : value
    10 : 33
]]

-- 对未初始化的key取值得到的value是nil
print(a[1])  -- nil
print()

-- 索引默认从1开始
for k, v in pairs(tab2) do
    print(k .. " : " .. v)
end
print()



-- function
-- function 被看作第一类值 (First-Class Value)
function fac1(n)
    if n == 0 then
        return 1
    else
        return n * fac1(n - 1)
    end
end
print(fac1(3))  -- 3! = 6
print()

-- function 可以被存在变量中
fac2 = fac1
print(fac2(4))  -- 4! = 24
print()

-- function 可以通过创建匿名函数的方式传递
function fac3(x, fun)
    fun(x)
end

fac3(5,
function(n)
    print(n * n)  -- 25
end
)