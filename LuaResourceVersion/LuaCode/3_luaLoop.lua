--[[
    while
    for
    repeat...until

    break
    goto
    没有 continue ! https://www.zhihu.com/question/19954162/answer/13465654
]]

-- while
--[[
while(condition)
do
    statements
end
]]

a = 0
while(a < 3)
do
    print(a)
    a = a + 1
end
print()


-- for
--[[
数值for循环
for var=exp1,exp2,exp3 do
    statements
end
]]

for i = 0, 2, 1 do
    print(i)
end
print()

-- exp3 可以不填，默认是 1
for i = 0, 2 do
    print(i)
end
print()

-- exp2 可以用表达式替代，只计算一次
function func(x)
    print("function")
    return x * 2
end

for i = 0, func(1) do
    print(i)
end
print()

--[[
泛型for循环，类似 foreach
a = {"one", "two", "three"}
for k, v in ipairs(a) do
    print(k, v)
end
]]
-- ipairs 和 pairs 有啥区别？
b = {"one", "two", "three"}
for k, v in ipairs(b) do
    print(k, v)
end
print()


-- repeat...until
--[[
相当于 do while，先执行后判断
repeat
    statements
until(condition)
]]
c = 0
repeat
    print(c)
    c = c + 1
until(c == 3)
print()



-- break
-- 中途退出循环，常用
for i = 0, 2, 1 do
    print(i)
    if i == 1 then
        break
    end
end
print()


-- goto
--[[
跳转到标签处
::label::
goto label
]]
d = 0
::add:: d = d + 1
print(d)
if d < 2 then
    goto add
end
print()

-- 也可以用 do end 代码块让标签执行多个语句，不做演示

-- 可以用 goto 勉强实现 continue，涉及到具体业务，也不做演示 (但还是很蠢)