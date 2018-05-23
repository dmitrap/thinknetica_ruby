vowels = ['a','e','i','o','u']
hash = Hash.new
('a'..'z').each_with_index do |letter, i|
  if vowels.include?(letter)
    hash[letter] = i + 1
  end
end
puts hash
