def generate_password(length)
  characters = ('a'..'z').to_a + ('A'..'Z').to_a + ('0'..'9').to_a + ['!', '@', '#', '$', '%', '^', '&', '*']

  password = Array.new(length) { characters.sample }.join
  puts "Ваш випадковий пароль: #{password}"
end

print 'Введіть бажану довжину паролю: '
password_length = gets.chomp.to_i

generate_password(password_length)
