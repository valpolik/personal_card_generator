def get_name
  begin
    puts "Введите фамилию, имя, и отчество:"
    name = STDIN.gets.chomp
  end until name =~ /\A(?=\A.{,100}\z) *[a-zа-яё]+ +[a-zа-яё]+ +[a-zа-яё]+ *\z/i
  # Regexp не позволяет строке быть длиннее ста символов, и при этом позволяет
  # вводить лишние пробелы.

  name = name.scan(/[a-zа-яё]+/).map(&:capitalize).join(" ")
  # Строка очищается от лишних пробелов, форматируется регистр.
end

def get_description
  begin
    puts "Опишите деятельность человека (не более 60 символов):"
    description = STDIN.gets.chomp
  end while description.size >= 60 && description =~ /<.+>/
  # Regexp проверяет наличие вредоносного кода в описании
  description.strip!
  description[0] = description[0].upcase
  # Описание всегда будет начинаться с большой буквы, и
  # и не будет содержать пробелов в начале и в конце строки
  description
end