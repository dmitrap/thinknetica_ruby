puts 'эта программа вычислит для вас площадь треугольника'
puts 'пожалуйста введите необходимые данные'
puts 'какова длина основания (a) треугольника?'
a = gets.to_f
puts 'какова длина высоты (h) треугольника?'
h = gets.to_f
area = (a * h) / 2
puts "площадь вашего треугольника равна: #{area}"
