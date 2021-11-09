puts "Вы должны ввести данные для заполнения визитной карточки"

data = []

data << get_name << get_description << get_phone << get_email


begin
  puts "Введите фамилию, имя, и отчество:"
  name = STDIN.gets.chomp
end until name =~ /\A(?=\A.{,100}\z) *[a-zа-яё]+ +[a-zа-яё]+ +[a-zа-яё]+ *\z/i
# Regexp не позволяет строке быть длиннее ста символов, и при этом позволяет
# вводить лишние пробелы.

name = name.scan(/[a-zа-яё]+/).map(&:capitalize).join(" ")
# Строка очищается от лишних пробелов, форматируется регистр.