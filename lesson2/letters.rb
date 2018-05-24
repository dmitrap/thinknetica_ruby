vowels = ['a','e','i','o','u']
vowels_with_index = {}
('a'..'z').each_with_index do |letter, i|
  if vowels.include?(letter)
    vowels_with_index[letter] = i + 1
  end
end
puts vowels_with_index
