puts 'эта программа определяет является ли треугольник прямоугольным'
puts 'пожалуйста, введите три стороны вашего треугольника'
puts 'сторона a?'
a = gets.to_f
puts 'сторона b?'
b = gets.to_f
puts 'сторона c?'
c = gets.to_f
puts 'ваш треугольник равнобедренный' if a == b || a == c || b == c
puts 'ваш треугольник равносторонний' if a == b && a == c
if a > b
	if a > c
    maxside = a**2
    sum = c**2 + b**2
	else
    maxside = c**
    sum = a**2 + b**2
  end
elsif b > c
	maxside = b**2
  sum = a**2 + c**2
elsif b < c
	maxside = c**2
  sum = a**2 + b**2
end
if maxside.nil?
  puts 'ваш треугольник не прямоугольный!'
elsif maxside == sum
  puts 'ваш треугольник прямоугольный!'
else
  puts "ваш треугольник не прямоугольный!"
end
