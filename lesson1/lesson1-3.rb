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
if a**2 == c**2 + b**2
	puts "ваш треугольник прямоугольный"
elsif b**2 == a**2 + c**2
	puts "ваш треугольник прямоугольный"
elsif c**2 == a**2 + b**2
	puts "ваш треугольник прямоугольный"
else
  puts "ваш треугольник не прямоугольный!"
end
