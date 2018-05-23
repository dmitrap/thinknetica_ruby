cart = {}
sum = 0
total = 0
loop do
  puts 'Пожалуйста введите название, цену и количество товаров, введите "стоп" чтобы закончить.'
 print 'товар: '
  title = gets.chomp
  break if title == 'стоп'
  print 'цена: '
  price = gets.chomp.to_f
  print 'количество: '
  quantity = gets.chomp.to_f
  cart[title] = { price: price, quantity: quantity }
end
cart.each do |k, v|
  sum = v[:price] * v[:quantity]
  puts "Наименование товара: #{k}.  Количество товара: #{v[:quantity]}. Итого за товар: #{sum}. "
  total += sum
end
puts "Итого: #{total}"
