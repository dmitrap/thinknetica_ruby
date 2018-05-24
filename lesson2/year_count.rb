puts 'пожалуйста введите поочередно три числа, обозначающих сегодняшнюю дату (в формате: дд.мм.гггг)'
today = gets.to_i
month = gets.to_i
year = gets.to_i
months = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
months[0] = 0 if month == 1
months[1] = 29 if year % 400 == 0 || year % 4 == 0 && year % 100 != 0
day = 0
months[0...month].each do |sum|
  day += sum
end
today = today + day
puts "сегодня #{today} день года!"
