require 'nokogiri'
require 'open-uri'

# Відкриваємо файл для запису
file_path = 'parsed_data.txt'
file = File.open(file_path, 'w')

# Завантажуємо HTML-сторінку за посиланням
url = 'https://www.reddit.com/r/ListOfSubreddits/wiki/listofsubreddits/'
html = URI.open(url)
doc = Nokogiri::HTML(html)

# Знаходимо елементи списку підкатегорій
subreddit_list = doc.css('.md ul li')

# Записуємо назви підкатегорій у файл
subreddit_list.each do |subreddit|
  file.puts subreddit.text.strip
end

# Закриваємо файл
file.close

puts "Дані збережено у файлі: #{file_path}"
