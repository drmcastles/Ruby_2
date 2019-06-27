abc = ('a'..'z')
#массив-константа с нужными нам буквами
Letters = %w[a e i o u y]

vowels = {}
abc.each.with_index(1) do |letter, index|
  vowels[letter] = index if Letters.include?(letter)
end

puts vowels
