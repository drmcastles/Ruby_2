#метод для очистки консоли.
def clear_screen
  if RUBY_PLATFORM =~ /win32|win64|\.NET|windows|cygwin|mingw32/i
    system('cls')
  else
    system('clear')
  end
end

products = {}
sum = 0
basket_sum = 0

loop do
clear_screen()
  puts "Введите название продукта: "
  name = gets.chomp
  break if name.downcase == 'stop'
  puts "Введите цену товара : "
  price = gets.chomp.to_f
  puts "Введите количество товара: "
  quantity = gets.chomp.to_f
  products[name] = {price: price, quantity: quantity}
end

clear_screen()

products.each do |name, price_quantity|
  sum = price_quantity[:price] * price_quantity[:quantity]
  print "Вы добавили #{name}, цена за единицу: #{price_quantity[:price]}, "
  print "количество: #{price_quantity[:quantity]}, общая сумма: #{sum}"
  puts
  basket_sum += sum
end
puts "Цена всех товаров в корзине: #{basket_sum}"
