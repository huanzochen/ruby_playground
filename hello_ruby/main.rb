
address = [1, 2, 3, 4, 5, 6, 7, 8, 9]
p address
p address[5]
new_address = address.reverse!
p new_address

# print "Hello world"
# puts "Hello world"
# p "Hello world"

# greeting = "Hello world!"
# puts greeting

def says_hello(things_to_say)
  puts things_to_say
end
says_hello 'Hello world ruby is great'

sentence = 'My name is Tommy'
p sentence

first_name = 'tzuchuan'
last_name = 'huang'
puts 'My first name is #{first_name} and my lastname is #{last_name}'
puts "My first name is #{first_name} and my lastname is #{last_name}"

puts first_name + ' ' + last_name

# incredible!
p first_name.class
p 10.class
p 12.2.class
# p 12.2.methods
p 12.2.to_s.class

p first_name.reverse.capitalize
p first_name.capitalize

p first_name.empty?
p ''.empty?
p ''.nil?
p nil.nil?

sentence = 'Welcome to the pool'
# 替換功能
p sentence.sub('the pool', 'utopia')
# 看所有功能
# p sentence.methods

new_first_name = first_name
p new_first_name
first_name = 'tommy'
p new_first_name
p first_name

p 'the new first name is #{new_first_name}'

p 'Hi, I am playing ruby on \'repl.com\' '

# puts "what is you first name?"
# first_name = gets.chomp
# puts "thanks your first_name is #{first_name}"

# puts "multiply??"
# input = gets.chomp
# puts input.to_i * 2

puts 1 + 2
puts 10 / 2
puts 10 / 4
puts 10 / 4.to_f
puts 10 / 4.0
20.times { puts rand(10) }
puts '10'.to_f
# 如果不給轉換，就會是 0.0
puts 'hello'.to_f

# puts "Simple calculator"
# 25.times { print "-" }
# puts "enter first"
# num1 = gets.chomp
# puts "second"
# num2 = gets.chomp
# print "result is #{num1.to_i + num2.to_i}"

puts 1 + 2
x = 5
y = 10
puts y / x

puts 'I am a line'
puts '-' * 20
puts ' I am a diff line after a provider'
25.times { print '-' }

# 20.times{ puts "hi"}

# ==
# a = b
# !=
# >
# <
puts "10 === 10 is #{10 === 10}"

def multiply(first_num, second_num)
  first_num.to_f * second_num.to_f
end

def add(first_num, second_num)
  first_num.to_f + second_num.to_f
end

def substract(first_num, second_num)
  first_num.to_f - second_num.to_f
end

def mod(first_num, second_num)
  first_num.to_f % second_num.to_f
end

def devided(first_num, second_num)
  first_num.to_f / second_num.to_f
end

puts multiply(20, 30)
puts add(20, 30)
puts substract(20, 30)
puts mod(20, 30)
puts devided(20, 30)

20.times { print '-' }

# if/else
condition = false
another_condition = false
if !condition && !another_condition
  puts 'Hello'
# execute some code
else
  puts 'Bye'
  # excute some other coder
end
puts 'La la la'

name = 'Tommy'
if name == 'Tommy'
  puts "Welcome #{name}"
elsif name == 'Jack'
  puts "Welcome #{name}, I know you are Jack!"
else
  puts 'Welcome anonymous'
end
puts 'hahaha'

a = [1, 2, 3, 4, 5, 6, 7, 8, 9]
# puts a
# print a
# p a

p a.last

x = 1..100
puts x
puts x.class
# p x.to_a
# p x.to_a.shuffle!

# ! is mutating the variable, not return a new variable
y = (1..100).to_a.reverse!
p y

p z = ('a'..'z').to_a.shuffle

p "z.length is #{z.length}"
p z << 99

p z.last
p z.first
p z.unshift('tommy')
p z.append('kevin')
p z.uniq

b = []
p b.empty?
p b.nil?

p z.include?('Tommy')
p z.include?('tommy')
p z.push('new item')
p zz = z.pop
# new item has poped
p z

# 合併
p z.join
p z.join('-')
p zstring = z.join(', ')
p zstring.split

20.times { print '-' }
p 'now i got to print z array'

for i in z
  print i.to_s + ' '
end

y = (1..100).to_a.shuffle

p y.select(&:even?)

# 用 join 等於是把 array 轉成 string
p y.join('-').class

# p 10.methods

a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p a.empty?
a << 25
p a
