puts 'Поочередно введите значения коэфицентов a, b, c квадратного уравнения ax^2+bx+c=0'
a = gets.to_f
b = gets.to_f
c = gets.to_f
d = b**2 - 4 * a * c
if d < 0
  puts "Дискриминант D=#{d}, что меньше нуля. Корней нет!"
else d >= 0
  sqrt_d = Math.sqrt(d)
  x1 = (-b + sqrt_d) / (2 * a)
  x2 = (-b - sqrt_d) / (2 * a)
  if x1 == x2
    puts "Дискриминант D=#{d}, корень X=#{x1}"
  else
    puts "Дискриминант D=#{d}, корень X1=#{x1}, корень X2=#{x2}"
  end
end
