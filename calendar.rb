last_days = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
puts 'Введитете даты в формате: ДД.ММ.ГГГГ'
#создаем массив с полученными данным и конвертируем их в integer
day, month, year = gets.chomp.split('.').map(&:to_i)
#проверка является ли год високосным
leap_year = (year % 4 == 0) && (year % 100 != 0) || (year % 400 == 0)
last_days[1] = 29 if leap_year
# делаем срез по полученному месяцу
days_point = last_days.take(month - 1)
#вычитаем сумму дней
sum_days = day
days_point.each {|d| sum_days += d }
puts "Это #{sum_days} день в году."
