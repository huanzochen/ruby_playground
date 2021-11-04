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

# pick([*1..10]) { |x|
#     return x % 2 == 0
# }
# LocalJumpError, block 執行區段比較像是程式執行區塊， 不能 return, 因為不是 method.

(5).times {
    puts "print something"
}

def my_times(n) 
    i = 0
    while n > i
        i += 1
        yield(i)
        # yield i
    end
end

my_times(5) { |num|
    puts "hello print something #{num}"
}

# 大括號和 do...end 其實有細微的不同
p [*1..10].map { |i| i * 2}
p [*1..10].map do |i| i * 2 end
# 因為優先層級不同 實際上是這個樣子
p ([*1..10].map { |i| i * 2})
p ([*1..10].map) do |i| i * 2 end

p [*1..10].map do
    |i| i * 2 
end


greeting = Proc.new { |var|
    puts "哈囉，世界"
    puts "#{var}"
} # 使用 Proc 類別可以把 Block 物件化
# greeting.call

greeting.call("我變成物件了！")
greeting.("我變成物件了！")
greeting["我變成物件了！"]
greeting === "我變成物件了！"
greeting.yield "我變成物件了！"
greeting.yield("我變成物件了！")