def sort_numbers(numbers, order)
  sorted_numbers = case order
                   when 'asc'
                     numbers.sort
                   when 'desc'
                     numbers.sort.reverse
                   else
                     puts 'Неправильний вибір порядку сортування.'
                     return
                   end

  puts "Відсортований список: #{sorted_numbers.join(', ')}"
end

print 'Введіть список чисел через кому: '
input_numbers = gets.chomp.split(',').map(&:to_i)

print 'Введіть "asc" для зростання або "desc" для спадання: '
sorting_order = gets.chomp.downcase

sort_numbers(input_numbers, sorting_order)
