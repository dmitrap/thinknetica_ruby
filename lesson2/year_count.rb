puts 'пожалуйста введите поочередно три числа, обозначающих сегодняшнюю дату (в формате: дд.мм.гггг)'
day = gets.chomp.to_i
month = gets.chomp.to_i
year = gets.chomp.to_i
if year % 400 == 0 || (year % 4 == 0 && year % 100 != 0)
  leap = 29
else
  leap = 28
end
months = { 1 => 31,
  2 => leap,
  3 => 31,
  4 => 30,
  5 => 31,
  6 => 30,
  7 => 31,
  8 => 31,
  9 => 30,
  10 => 31,
  11 => 30,
  12 => 31 }
months.delete_if { |i| i >= month }
months.each do |m, d|
  day = day + d
end
puts "сегодня #{day} день года!"
