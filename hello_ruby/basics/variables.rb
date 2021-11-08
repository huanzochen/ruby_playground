# p @name
# p $name
# p name

name = "tommy"
def say_hello
    puts "hi, 我是 #{name}"
end

puts name
# p say_hello # 印出變數找不到的錯誤

MyName = "tommy"
MyName << "huang"
p MyName
MyName.prepend "Hi, my name is "
p MyName

# 多重指定
a, b, c, d, e = [1,2,3,4,5]
puts a, b, c, d, e
# 如果數量不一樣多
a, b = 1, 2, 3, 4
puts a, b # 後面的數字被丟掉了 噗
# 如果是用星號 *
a, *b = 1, 2, 3, 4
print a, b # 後面的內容會變成給 b 接收
x, y ,z = [1, 2]
puts x, y ,z # 後面的值會因為接收不到值，變成 nil
p x
p y
p z

# 神奇的註解方式
=begin

這裡都是註解喔
嘻嘻
    
=end
puts "註解區域結束"

# 可讀性很好的特點
# 一般地交換動作
x = 1
y = 2 

puts "一般地交換函示"
tmp = x
x = y
y = tmp
p x, y

puts "ruby 版方便的交換功能"
x = 1
y = 2
x, y = y, x
p x, y

# nil 和 false 都是一個class
puts nil.class
puts false.class 
# if nil is nil?
puts nil.nil?
puts nil.to_a.class
puts nil.to_h.class

# if 倒裝
age = 18
if age >= 18
    puts "你是大人了"
end
# 也可以這樣
puts "你是大人了" if age >= 18

# if not 倒裝
age = 18
puts "你是大人了" unless age < 18
puts "你是大人了" unless age >= 18 # 用法跟 if 完全相反

# about range 
age = 10
if age >= 0 && age <= 3
    puts 'baby'
elsif age >= 3 && age <= 10
    puts 'Kids'
elsif age >= 11 && age <= 17
    puts 'Teen'
else
    puts 'adult'
end
# 以上用法，可以改寫成

age = 10
case age
when 0..3
    puts 'baby'
when 4..10
    puts 'kids'
when 11..17
    puts 'Teen'
else 
    puts 'Adult'
end

puts "特殊字元需要用到反斜線 \" 來實現\"\"喔"

# 如果單引號和雙引號無法滿足需求 也可以用特殊的表現方式喔
gem = "紅寶石"
puts %Q(你好， #{gem}) # 類似雙引號, 可以使用字串安插
puts %q(你好， #{gem}) # 類似單引號， 不可以使用

# 一些字串的大小寫轉換
puts "hello, ruby".upcase
puts "HELLO, RUBY".downcase
puts "hEllO, Ruby".swapcase

puts "hello, ruby".capitalize
puts "helllo, ruby".size

words = "Lorem Ipsum Dolor Sit Amet, Consectetur Adipiscing Elit."
puts words.count("i")
puts words.include?('L')
puts words.sub(/Lorem/, "Tommy")



