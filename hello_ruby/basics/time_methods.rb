# https://ruby-doc.org/core-2.6.3/Time.html

p Time.now
p Time.local(2021, 11, 03)

puts Time.at(1431262132) # 2015-05-10 20:48:52 +0800

t = Time.now
puts t.gmt?