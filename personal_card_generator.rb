require_relative 'personal_card_class'

puts "Вы должны ввести данные для заполнения визитной карточки"

personal_card = PersonalCard.new

personal_card.create_html_doc
