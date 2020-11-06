abc=[]
("a".."c").each do |i|
	puts "Введите #{i}:"
	t=gets.to_i
	abc.push(t)
	end

D=abc[1]**2-4*abc[0]*abc[2]
puts"Дискриминант равен #{D}"
if D==0
  x=-abc[1]/(2*abc[0])
  puts "x1=x2=#{x}"
  elsif D>0
    x1=(-abc[1]+D**0.5)/(2*abc[0])
    x2=(-abc[1]-D**0.5)/(2*abc[0])
    puts "x1=#{x1}, x2=#{x2}"
  elsif D<0
    puts "Корней нет"
end
		
