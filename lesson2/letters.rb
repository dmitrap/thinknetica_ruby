vowels = ['a','e','i','o','u']
vowels_with_index = {}
('a'..'z').each_with_index do |letter, i|
  vowels_with_index[letter] = i + 1 if vowels.include?(letter)
end
puts vowels_with_index
