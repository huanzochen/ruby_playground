def say_hello_to(name)
    # do something here
end

say_hello_to("悟空") {
    puts "這裡是 Block"
}

# 或是 do ... end 寫法
say_hello_to("悟空") do
    puts "這裡是 Block"
end 

def say_hello 
    puts "開始"
    yield 123
    puts "結束"
end

say_hello do |x|
    puts "這裡是 block 區塊被執行， 因為 yield 把控制權交回來了！ #{x}"
end

say_hello { |x|
    puts "這裡是 block, 我收到了 #{x}!"
}

def pick(list)
    result = []
    list.each { |i|
        result << i if yield(i)
    }
    result
end

p pick([*1..10]) { |x| x % 2 == 0} # [2,4,6,8,10]
p pick([*1..10]) { |x| x - 2 == 0} # [2]
p pick([*1..10]) { |x| x < 8} # [1,2,3,4,5,6,7]
p pick([*1..10]) { |x| x.odd?} # [1,3,5,7,9]