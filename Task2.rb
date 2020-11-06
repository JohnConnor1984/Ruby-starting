hash = {}
result = 0

loop do
  puts "Input the name"
  name = gets.chomp
  break if name == "stop"
  puts "Input the price"
  price = gets.chomp.to_f
  puts "Input the number"
  count = gets.chomp.to_f
  hash[name] = {"Price" => price, "Number" => count}
end

result=0

hash.each do |name, price|
  sum = price["Price"]*price["Number"] 
  puts "#{name} cost is #{sum}"
  result += sum	
end

puts "Total: #{result}"