
# Symbol 是一個帶有名字的物件，可以單獨存在
# Symbol 不能被修改
p :hello.length
p :hello.upcase
p :hello[0]
p :hello[3]
p "hello"[0] = "k"
# p :hello[0] = "k"  # undefined method `[]=' for :hello:Symbol (NoMethodError)

# string 每次宣告的 object_id 都不一樣
5.times do 
    puts "hello".object_id
end

# symbol 的 object_id 都是一樣的，代表都是一樣的東西．
5.times {
    puts :hello.object_id
}

require 'benchmark'

loop_times = 100000000
str_bench_mark = Benchmark.measure {
    loop_times.times {
        "hello" == "hello"
    }
}.total

symbol_bench_mark = Benchmark.measure {
    loop_times.times {
        :hello == :hello
    }
}.total

puts "String: #{str_bench_mark}"
puts "symbol: #{symbol_bench_mark}"
