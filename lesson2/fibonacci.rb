array = [0, 1]
number = 1
while number <= 100
  array.push(number)
  number = array[-1] + array[-2]
end
print array
