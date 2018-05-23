array = [0, 1]
loop do
  i = array[-1] + array[-2]
  break if i >= 100
  array.push(i)
end
print array
