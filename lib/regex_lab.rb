def starts_with_a_vowel?(word)
  if word.match(/\b[aeiouAEIOU]\w+/) == nil
    return false
  else
    return true
  end
end

def words_starting_with_un_and_ending_with_ing(text)
  text.scan(/\bun\w+ing/)
end

def words_five_letters_long(text)
  text.scan(/\b\w{5}\b/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  text.match(/^[A-Z].*\.$/) != nil
end

def valid_phone_number?(phone)
  number = phone.scan(/\d/)
  number.length == 10
end
