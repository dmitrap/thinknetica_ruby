puts 'эта программа определяет является ли треугольник прямоугольным'
puts 'пожалуйста, введите три стороны вашего треугольника'
puts 'сторона a?'
a = gets.to_f
puts 'сторона b?'
b = gets.to_f
puts 'сторона c?'
c = gets.to_f
if a == b && a == c
  puts 'ваш треугольник равносторонний'
  exit
end
if a > b
  max = a
  leg1 = b
else
  max = b
  leg1 = a
end
if max > c
  leg2 = c
else
  leg2 = max
  max = c
end
rectangle = max**2 == leg1**2 + leg2**2
if rectangle && (leg1 == leg2)
  puts "ваш треугольник прямоугольный и равнобедренный"
elsif rectangle
  puts "ваш треугольник прямоугольный"
else
  puts "ваш треугольник не прямоугольный!"
end
