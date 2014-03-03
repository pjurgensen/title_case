def title_case(phrase)
  phrase.downcase!
  phrase_array = phrase.split
  capitalize_exceptions = ["the", "and", "a", "of", "an", "if", "in"]

  phrase_array[0].capitalize!

  (phrase_array - capitalize_exceptions).each do |word|
      word.capitalize!
  end

  phrase_array.join(" ")
end

puts title_case('A HELLO A CAT')
