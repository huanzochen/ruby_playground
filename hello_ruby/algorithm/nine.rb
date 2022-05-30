# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
if x < 0
    return false
end

x_arr = x.to_s.split("")
x_length = x_arr.length
result = true

if x_length.odd?
    # p "odd"
for i in 0..((x_length - 1) / 2) - 1 do
    if x_arr[i] != x_arr[x_length - 1 - i]
        result = false
    end
end
elsif x_length.even? then
# p "even"
for i in 0..(x_length / 2) do
    if x_arr[i] != x_arr[x_length - 1 - i]
        result = false
    end
end
end

result
end

p is_palindrome(1001)