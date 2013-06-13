# 近日看ruby cookbook的笔记



## 用Time.at(number)来转换unix时间戳到普通人能理解的时间格式

>> Time.at(0)
=> 1970-01-01 07:00:00 +0700
>> Time.at(10)

>> Time.at(1330000000)
=> 2012-02-23 20:26:40 +0800
这是一个时间对象不是字符串，因此可以查其属性
>> t= Time.at(1330000000)
=> 2012-02-23 20:26:40 +0800
>> t.sec
=> 40
>> t.hour
=> 20
>> t.min
=> 26
>> t.day
=> 23
>> t.mon
=> 2
>> t.year
=> 2012
>> t.zone
=> "CST"
>> t.year
=> 2012
>> t.wday # weekday，周日是0；4就是周五
=> 4
>> t.yday # 该年的第多少天
=> 54

>> Time.now
显示当前时间。

>> Time.local(2012,1,24,22,33,44)
=> 2012-01-24 22:33:44 +0800
构建一个当前时区的时间

>> Time.local(2555,1,24,22,33,44)
=> 2555-01-24 22:33:44 +0800
佛教年的2012年


## 写一个重排文本每行字数的ruby程序

  #不起作用啊
def reformat_wrapped(s, width = 78)
        lines = []
        line = ""
        s.split(/s+/).each do |word|
                if line.size + word.size > width
                        lines << line
                        line = word
                elsif line.empty?
                        line = word
                else
                        line << " " << word
                end
        end
        
        lines << line if line # 这行是干嘛的？
        return lines.join("\n")
end

## string[/regex/]可找到字符串中第一个出现的正则
s = "My kingdom for a string!"
=> "My kingdom for a string!"
irb(main):072:0> s[/dom/]
=> "dom"
irb(main):073:0> s[/.../]
=> "My "
irb(main):074:0> s[/ ... /]
=> " for "

我之前不知道[]也接受正则。

普通用法
irb(main):075:0> a
=> "狗狗够猫猫冒"
irb(main):076:0> a[2,1]
=> "够"
irb(main):077:0> a[2,2]
=> "够猫"
irb(main):078:0> a.slice(2,1)
=> "够"
irb(main):079:0> a.slice(2,2)
=> "够猫"

两个整数参数的意思是：第一个为开始字符的index，第二个是从该index走的长度。

irb(main):090:0> a[2...s.length]  # 从index 2到结尾
=> "够猫猫冒"


## ruby下把windows的回车转换成的： text.gsub("\n\r", "\n")

        text.gsub("\n\r", "\n")
        text.gsub(/\n\r/, "\n")
两个都可以。

将所有空白都统一成一个空格
        text.gsub(/\s+/, " ")

## ruby的 String#capitalzie方法把字符串第一个字母大写后，其它所有字母都转为小写

irb(main):035:0> s = "i am in the US."
=> "i am in the US."
irb(main):036:0> s.capitalize
=> "I am in the us."

后面本应该大写的专有名词也会小写。这点容易忽略。

编写只大写第一个字符的方法：

irb(main):038:0> class String
irb(main):039:1> def capitalize_first_letter
irb(main):040:2> self[0].chr.capitalize + self[1,size]
irb(main):041:2> end
irb(main):042:1> end
=> nil
irb(main):043:0> s
=> "i am in the US."
irb(main):044:0> s.capitalize_first_letter
=> "I am in the US."
摘自 ruby cookbook 1st ed

## ruby的String#tr方法
tr就是translate，和bash中的用法相似

irb(main):047:0> 'LOWERCASE ALL VOWELS'.tr('AEIOU', 'aeiou')
=> "LoWeRCaSe aLL VoWeLS"


## ruby中写一个英文词频统计和中文字频统计的程序

### 英文词频统计
irb(main):001:0> def word_count(string)
irb(main):002:1> frequencies = Hash.new(0)
irb(main):003:1> string.downcase.scan(/\w+/) {|word| frequencies[word] += 1}
irb(main):004:1> return frequencies
irb(main):005:1> end
=> nil
irb(main):008:0> s = "dogs dog dogs dog dog"
=> "dogs dog dogs dog dog"
irb(main):009:0> word_count(s)
=> {"dogs"=>2, "dog"=>3}
irb(main):010:0> s = "dogs dog dogs dog dog"^C

### 中文字频统计
irb(main):010:0> a ="狗狗够猫猫冒"
=> "狗狗够猫猫冒"

irb(main):011:0> word_count(a)
=> {} # 直接用英文的那个不管作用，因为 \w把中文不起作用；即使是utf8

> b = 'shuru f$ 可是 fayu' # 另一个例子 \w 会忽略中文
=> "shuru f$ 可是 fayu"
irb(main):027:0> word_count(b)
=> {"shuru"=>1, "f"=>1, "fayu"=>1}

#我根据scan可以正确识别中文字符改进之前函数
irb(main):012:0> def occur(s) # 编写适合中文的
irb(main):013:1> f = Hash.new(0)
irb(main):014:1> s.scan(/./){|c| f[c] += 1}
irb(main):015:1> return f
irb(main):016:1> end
=> nil
irb(main):017:0> occur(a)
=> {"狗"=>2, "够"=>1, "猫"=>2, "冒"=>1}


