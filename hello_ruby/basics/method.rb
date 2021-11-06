def say_hello_to(name)
    puts "hello, #{name}"
end

say_hello_to("handsome man")
# 另一種寫法
say_hello_to "handsome man"

def say_hello(message = "default msg")
    puts "hello, #{message}"
end
send(:say_hello)

def bmi_calculator(height, weight)
    weight / height ** 2
end

puts bmi_calculator(1.78, 85) # => 27.681

def is_adult?(age)
    age >= 18
end    

if is_adult?(20)
    puts "你成年了！"
end

if is_adult?(16)
    puts "你還沒成年！"
else 
    puts "你還沒成年!"
end

puts "".empty?
puts [1, 2, 3, 4, 5].include?(3)
puts "Ruby".start_with?("Ru")

age = 18
def age 
    20
end
puts age 
# 如果還是想呼叫 method, how to?
puts age()
# 哈！

def say_hello_to(name, options = {})
    "my name is #{name}, favorite things is #{options[:favorite]} !"
end

# 原始寫法
puts say_hello_to "tommy", {age: 18, favorite: 'mouse mouse'}
# 開始省略一些東西
puts say_hello_to "tommy", age: 18, favorite: 'mouse mouse'

