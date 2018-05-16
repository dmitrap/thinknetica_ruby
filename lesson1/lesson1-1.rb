puts 'эта программа вычислит ваш идеальный вес'
puts 'пожалуйста, представьтесь и введите требуемые параметры'
puts 'как вас зовут?'
name = gets.chomp
puts 'каков ваш рост?'
height = gets.chomp
ideal_weight = height.to_i-110
if ideal_weight > 40
  puts "#{name}, ваш идеальный вес #{ideal_weight}!"
elsif ideal_weight < 0
  puts "#{name}, ваш вес уже идеальный!"
else puts "#{name}, сначала подрости!"
end
