
############################## hash ##############################

sample_hash = { 'a' => 1, 'b' => 2, 'c' => 3 }

p sample_hash
p sample_hash['b']
my_details = { 'name' => 'tommy', 'age' => 25 }
p my_details['age']

symbol_hash = { a: 2, b: 3 }
p symbol_hash
p symbol_hash.keys
p symbol_hash.values
symbol_hash.each do |key, value|
  puts "the key of hashs is #{key} 
  and it's class is #{key.class}, the value is #{value.class}"
end
p symbol_hash[:a] # 2
symbol_hash[:c] = 777
p symbol_hash[:c].class # Integer
symbol_hash.delete(:c)
p "symbol_hash value is #{symbol_hash} now, key of c is now been deleted"
symbol_hash.each { |k, v| symbol_hash.delete(k) if v.odd? }
p "symbol_hash values now is #{symbol_hash}, the odd number has been deleted"

symbol_hash2 = { a: 2, b: 3, name: 'tommy' }
p symbol_hash2
symbol_hash2.each { |k, v| symbol_hash2.delete(k) if v.is_a?(String) }
p symbol_hash2
