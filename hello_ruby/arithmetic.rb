require 'bigdecimal'

p 1.methods

# 正常的加法
p 1 + 2
# 實際上是這樣運作的
p 1.+(2)

# 浮點數運算是不一定準確的
# 這兩者看似相等，但加出來不會相等 Q
puts 4.51212 == (3.51212 + 1)

puts BigDecimal("4.51212") == BigDecimal("3.51212") + BigDecimal("1")

sum = 0
for i in (1..10000)
    sum = sum + 0.0001
end
print sum # 會看到印出來的值其實不是非常精確的


