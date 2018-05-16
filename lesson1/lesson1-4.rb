puts 'Поочередно введите значения коэфицентов a, b, c квадратного уравнения ax^2+bx+c=0'
a = gets.chomp.to_f
b = gets.chomp.to_f
c = gets.chomp.to_f
d = b*b-4*a*c
x1 = ((-1*b)+Math.sqrt(d.to_f))/(2*a)
x2 = ((-1*b)-Math.sqrt(d.to_f))/(2*a)
if d >= 0
  if d == 0
    puts "Дискриминант D=#{d.to_s}, корень X=#{x1.to_s}"
  elsif d > 0
    puts "Дискриминант D=#{d.to_s}, корень X1=#{x1.to_s}, корень X2=#{x2.to_s}"
  end
else
  puts "Дискриминант D=#{d.to_s}, что меньше нуля. Корней нет!"
end
