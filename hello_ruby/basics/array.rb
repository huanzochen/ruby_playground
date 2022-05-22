friends = ['貓咪', '狗狗', '長頸鹿', '大象', '鼠鼠']
puts friends[-1]
# 可以透過更優雅的方式造訪 array.
puts friends.last
puts friends.first

list = [1,2,3,4,5]
p list.map {|i| i * 2 - 1}
print [*1..42]
p [*1..42].sample(3)

# 舊式的 hash 寫法
old_hash = {:title => "Ruby", :price => 350}
p old_hash
# 新式的 hash 寫法
new_hash = {title: "Ruby", price: 350}
p new_hash
p old_hash == new_hash # true

profile = {name: "5xruby", age: 18, tel: "0983153268"}
# puts profile[name] # undefined local variable name
puts profile[:name]
puts profile[:age]

p profile
print profile
puts profile


