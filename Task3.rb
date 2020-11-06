matrix = []

loop do
  puts "Введите строку матрицы:"
  str = gets.chomp
  array = str.split(',')
  break if (matrix.last == [] and array == [])
  matrix.push(array)
end

matrix.delete([])

det = 0
if matrix.size == matrix[0].size
  n = matrix.size
  (0..n-1).each do |i|
    a_ij = Marshal.load(Marshal.dump(matrix[0][i])).to_i
    part = Marshal.load(Marshal.dump(matrix))
    part.delete_at(0)
    part[0].delete_at(i)
    minor = part[0][0].to_i
    minor *= a_ij*(-1)**(2+i)
    det += minor
  end
end

puts "Определитель матрицы: #{det}" 