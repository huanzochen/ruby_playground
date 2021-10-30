counter = 0
while counter < 5
    puts "hi, the counter is #{counter}"
    counter +=1
end
# while 的死對頭 until
counter = 0
until counter >= 5 
    puts "hi, the counter is #{counter}"
    counter += 1
end

# about for 
friends = ["eddie", "joanne", "john", "mark"]
for friend in friends
    puts friend
end

for i in 1..5 do
    puts i 
end

5.times do 
    p "hello, ruby"
end

5.times {
    p "hello, boy"
}

1.upto(5) do |i|
    puts "hi, ruby #{i}"
end
5.downto(1) do |i|
    puts "hi, boy #{i}"
end

5.downto(1) { |i|
    puts "hi, boy #{i}"

}

friends.each do |friend|
    puts friend
end

