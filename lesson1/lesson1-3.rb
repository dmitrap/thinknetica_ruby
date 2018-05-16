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
    maxside = a*a
    sum = c*c+b*b
	else
    maxside = c*c
    sum = a*a+b*b
  end
elsif b > c
	maxside = b*b
  sum = a*a+c*c
elsif b < c
	maxside = c*c
  sum = a*a+b*b
end
if maxside.nil?
  puts 'ваш треугольник не прямоугольный!'
elsif maxside == sum
  puts 'ваш треугольник прямоугольный!'
else
  puts "ваш треугольник не прямоугольный!"
end
