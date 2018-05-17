puts 'эта программа вычислит ваш идеальный вес'
puts 'пожалуйста, представьтесь и введите требуемые параметры'
puts 'как вас зовут?'
name = gets.chomp
puts 'каков ваш рост?'
height = gets.to_f
ideal_weight = height - 110
if ideal_weight > 0
  puts "#{name}, ваш идеальный вес #{ideal_weight} кг!"
else
  puts "#{name}, ваш вес уже идеальный!"
end
