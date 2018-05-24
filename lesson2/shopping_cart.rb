cart = {}
total = 0
loop do
  puts 'Пожалуйста введите название, цену и количество товаров, введите "стоп" чтобы закончить.'
  print 'товар: '
  title = gets.chomp
  break if title == 'стоп'
  print 'цена: '
  price = gets.to_f
  print 'количество: '
  quantity = gets.to_f
  cart[title] = { price: price, quantity: quantity }
end
puts cart
cart.each do |name, details|
  sum = details[:price] * details[:quantity]
  puts "Наименование товара: #{name}.  Количество товара: #{details[:quantity]}. Итого за товар: #{sum}. "
  total += sum
end
puts "Итого: #{total}"
