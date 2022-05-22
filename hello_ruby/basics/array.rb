friends = ['貓咪', '狗狗', '長頸鹿', '大象', '鼠鼠']
puts friends[-1]
# 可以透過更優雅的方式造訪 array.
puts friends.last
puts friends.first

list = [1, 2, 3, 4, 5]
p list.map { |i| i * 2 - 1 }
print [*1..42]
p [*1..42].sample(3)

# 舊式的 hash 寫法
old_hash = { :title => "Ruby", :price => 350 }
p old_hash
# 新式的 hash 寫法
new_hash = { title: "Ruby", price: 350 }
p new_hash
p old_hash == new_hash # true

profile = { name: "5xruby", age: 18, tel: "0983153268" }
# puts profile[name] # undefined local variable name
puts profile[:name]
puts profile[:age]

p profile
print profile
puts profile

x = 1..100
p x
p x.to_a
# ! 是立即 mutate 值，但在這裡沒有生效，因為隔一個 to_a
p x.to_a.shuffle!
z = x.to_a.shuffle!
p "z"
p z

# splat operator *
# https://medium.com/@eggyy1224/ruby%E7%9A%84splat-operator-f2fa4f7956c7
# https://stackoverflow.com/questions/11006897/what-is-the-mean-of-and-flatten-in-ruby

p [*1..22]
p (1..22).methods

# splat operator only for Hash **
def go(x, *array, **hash)
  p "go function"
  p x
  p array
  p hash
end

go(1, 2, 3, { "name": "tommy" })

# flatten
# a function that can collapses the pairs into a on-dimensional sequence of values
p [[1, 2], [3, 4]].flatten

alphabet = "a".."z"
alphabet_array = alphabet.to_a
p alphabet_array
p alphabet_array.join
p alphabet_array.join("-")

b = alphabet_array.join(",")
p b
p b.split
p b.split(",")

z = %w(my name is tommy and this is great)
p z
for i in z
  print i + " "
end
z.each do |word|
  print word + " "
end
p " "
z.each { |food| print food.capitalize + " " }
p z = (1..10).to_a.shuffle

# 可以透過 .select 來批量選出符合標準的物件, 不需要寫 for 迴圈
p z.select { |number| number.odd? }




