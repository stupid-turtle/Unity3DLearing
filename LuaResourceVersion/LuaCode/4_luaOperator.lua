--[[
    算数运算符
    关系运算符
    逻辑运算符
    其他运算符
]]

-- 算数运算符
-- + - * / % ^ - //


-- + 加法
print(3 + 3) -- 6
print()

-- - 减法
print(3 - 3) -- 0
print()

-- * 乘法
print(3 * 3) -- 9
print()

-- / 除法
print(3 / 3) -- 1
print(4 / 3) -- 1.3333333333333
print()

-- % 取余
print(3 % 3) -- 0
print()

-- ^ 乘方
print(3 ^ 3) -- 27
print()

-- - 负号
print(-3) -- -3
print()

-- // 整除
print(3 // 3) -- 1
print(4 // 3) -- 1
print()

print(-3 // 3) -- -1
print(-4 // 3) -- -2
print()


-- 关系运算符
-- == ~= > < >= <=

-- == 等于
print(3 == 3) -- true
print()

-- ~= 不等于
print(3 ~= 3) -- false
print()

-- > 大于
print(3 > 3) -- false
print(4 > 3) -- true
print()

-- < 小于
print(3 < 3) -- false
print(2 < 3) -- true
print()

-- >= 大于等于
print(3 >= 3) -- true
print(4 >= 3) -- true
print()

-- <= 小于等于
print(3 <= 3) -- true
print(2 <= 3) -- true
print()


-- 逻辑运算符
-- and or not

-- and 与
print(true and true) -- true
print(true and false) -- false
print(false and false) -- false
print()

-- or 或
print(true or true) -- true
print(true or false) -- true
print(false or false) -- false
print()

-- not 非
print(not true) -- false
print(not false) -- true
print()


-- 其他运算符
-- .. #

-- .. 连接两个字符串
print("Hello " .. "World") -- Hello World
print()

-- 一元 # 返回字符串或表的长度
print(#"Hello") -- 5
print()


-- 优先级
-- 建议是不管怎么样都加上括号
-- ^ 乘方
-- not # - (一元)
-- * / %
-- + -
-- ..
-- < > <= >= ~= ==
-- and
-- or