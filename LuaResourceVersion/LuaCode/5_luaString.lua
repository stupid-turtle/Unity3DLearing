-- 表达方式
-- 1. 单引号
local str1 = 'Hello'
print(str1)
print()

-- 2. 双引号
local str2 = "World"
print(str2)
print()

-- 3. [[ ]]
local str3 = [[
Hello
World
]]
print(str3)
print()


-- 长度计算
-- 1. # 运算符
local len1 = #str1
print(len1)
print()

-- 2. string.len 函数
local len2 = string.len(str1)
print(len2)
print()

-- 该函数用于计算只包含ASCII字符的字符串长度，对于包含非ASCII字符的字符串，计算结果不正确
print(string.len('你好'))  -- 6
print()

-- 3. utf8.len 函数
print(utf8.len('你好'))    -- 2
print()


-- 转义字符
-- \a 响铃
-- \b 退格
-- \f 换页
-- \n 换行
-- \r 回车
-- \t 水平制表符
-- \v 垂直制表符
-- \\ 反斜杠
-- \" 双引号
-- \' 单引号
-- \[ 左方括号
-- \] 右方括号
-- \xXX 十六进制XX表示的字符
-- \u{XXX} 十六进制XXX表示的UTF-8字符
-- \z 用于跨行连接
print("Hello\nWorld")
print()


-- 字符串操作
-- 1. string.upper
local str4 = "Hello World"
print(string.upper(str4))   -- HELLO WORLD
print()

-- 2. string.lower
print(string.lower(str4))   -- hello world
print()

-- 3. string.gsub
-- string.gsub (s, pattern, repl [, n])
-- 在字符串 s 中查找 pattern 并替换为 repl，如果 n 给出，则最多替换 n 次
-- 返回值：被替换的字符串个数，和新的字符串
print(string.gsub("aaaaa", "a", "z"))      -- zzzzz   5
print(string.gsub("aaaaa", "a", "z", 3))   -- zzzaa   3
print(string.gsub("aaaaa", "aa", "z"))     -- zza     2
print(string.gsub("aaaaa", "aa", "z", 1))  -- zaaa    1
print()

-- 4. string.find
-- string.find (s, pattern [, init [, plain]])
-- 在字符串 s 中查找 pattern，返回其开始和结束下标，如果没有找到，返回 nil
-- init 为开始查找的下标，默认为 1，可以是负数，表示从字符串从后往前的偏移量
-- plain 为 true 时，使用简单模式，为 false 时，打开正则模式匹配功能
-- 返回值：开始下标，结束下标，左右闭区间
print(string.find("aaaaa", "aa"))      -- 1   2
print(string.find("abced", "a"))       -- 1   1
print(string.find("aaaaa", "a", 3))    -- 3   3
print(string.find("aaaaa", "a", -1))   -- 5   5
print(string.find("abced", "a", -1))   -- nil
print()

-- 5. string.reverse
-- string.reverse (s)
-- 返回字符串 s 的反转字符串
print(string.reverse("Hello"))  -- olleH
print()

-- 6. string.format
-- string.format (formatstring, ...)
-- 返回一个类似 printf 的格式化字符串
--[[
formatstring 为格式化字符串
%c 接受一个数字，返回其 ASCII 字符
%d, %i 接受一个数字，返回其整数形式的字符串
%o 接受一个数字，返回其八进制形式的字符串
%u 接受一个数字，返回其无符号整数形式的字符串
%x 接受一个数字，返回其小写形式的十六进制字符串
%X 接受一个数字，返回其大写形式的十六进制字符串
%e 接受一个数字，返回其指数形式的字符串
%E 接受一个数字，返回其指数形式的字符串
%f 接受一个数字，返回其浮点数形式的字符串
%g 接受一个数字，根据其大小使用 %e 或 %f
%G 接受一个数字，根据其大小使用 %E 或 %f
%q 接受一个字符串，返回其带引号的可安全被 Lua 编译器读入的版本
%s 接受一个字符串，返回其原始格式

%后可以添加参数
符号: 一个+号，表示其后的数字转义符将让正数显示正号，默认情况下只有负数显示负号
占位符: 在后面指定了字段宽度时，如果数据的位数不足，则会在前面补充占位符，默认为空格
对齐标识 -: 一个减号，表示左对齐，默认为右对齐
宽度数值: 一个数字，表示该项的最小宽度
小数位数/字符串截取长度: 一个点号，表示小数点或者字符串截取的开始
]]

print(string.format("the value is:%d", 4))  -- the value is:4
print(string.format("the value is:%+d", 4)) -- the value is:+4
print(string.format("the value is:%+d", -4))-- the value is:-4
print(string.format("the value is:%05d", 4))-- the value is:00004
print(string.format("the value is:%05d", -4))-- the value is:-0004
print(string.format("the value is:%5d", 4)) -- the value is:    4
print(string.format("the value is:%5d", -4))-- the value is:   -4
print(string.format("the value is:%-5d", 4))-- the value is:4
print(string.format("the value is:%-5d", -4))-- the value is:-4
print(string.format("the value is:%.2f", 4))-- the value is:4.00
print(string.format("the value is:%.2f", -4))-- the value is:-4.00
print(string.format("the value is:%.2f", 4.123))-- the value is:4.12
print(string.format("the value is:%.2f", -4.123))-- the value is:-4.12
print(string.format("the value is:%.2s", "Hello"))-- the value is:He
print()

-- 7. string.char  &  string.byte
-- string.char (...)
-- 接受 0 个或多个整数，返回这些整数所对应的 ASCII 字符串
print(string.char(97, 98, 99))  -- abc
print()

-- string.byte (s [, i [, j]])
-- 返回字符串 s 中下标 i 到 j（包含）的所有字符的 ASCII 码
-- i 默认为 1，j 默认为 i
print(string.byte("abc"))       -- 97
print(string.byte("abc", 2))    -- 98
print(string.byte("abc", 2, 3)) -- 98   99
print()

-- 8. string.len
-- string.len (s)
-- 返回字符串 s 的长度
print(string.len("abc"))    -- 3

-- 对于包含ASCII字符外的字符串，计算结果不正确，需要使用 utf8.len 函数
print(string.len("你好"))   -- 6
print()

-- 9. string.rep
-- string.rep (s, n [, sep])
-- 返回字符串 s 重复 n 次的字符串，sep 为分隔符，默认为空字符串
print(string.rep("abc", 3))     -- abcabcabc
print(string.rep("abc", 3, ","))-- abc,abc,abc
print()

-- 10. string.gmatch
-- string.gmatch (s, pattern)
-- 返回一个迭代器函数，每次调用返回字符串 s 中符合 pattern 的子串
-- pattern 为正则表达式
-- 返回值：迭代器函数，字符串 s，开始下标，结束下标
for word in string.gmatch("Hello Lua user", "%a+") do
    print(word)
end
print()

-- 11. string.match
-- string.match (s, pattern [, init])
-- 在字符串 s 中查找符合 pattern 的子串，如果找到，返回该子串，否则返回 nil
-- init 为开始查找的下标，默认为 1，可以是负数，表示从字符串从后往前的偏移量
-- pattern 为正则表达式
-- 返回值：匹配的子串，开始下标，结束下标
print(string.match("I have 2 questions for you.", "%d+ %a+"))  -- 2 questions
print(string.match("I have 2 questions for you.", "%d+ %a+", 5))  -- 2 questions
print(string.match("I have 2 questions for you.", "%d+ %a+", -5)) -- nil
print()

-- 12. string.sub
-- string.sub (s, i [, j])
-- 返回字符串 s 中下标 i 到 j（包含）的子串
-- i 默认为 1，j 默认为 -1
print(string.sub("Hello Lua user", 7))     -- Lua user
print(string.sub("Hello Lua user", 7, 9))  -- Lua
print(string.sub("Hello Lua user", -8))    -- Lua user
print(string.sub("Hello Lua user", -8, -6))-- Lua
print()