require 'pry'

def starts_with_a_vowel?(word)
 if word.match(/\A[aeiouAEIOU]/)
   return true
 end
 false
end

def words_starting_with_un_and_ending_with_ing(text)
  words = []
  text = text.split(" ")
  text.each do |word|
    if word.match(/\A(un)/) #and word.match(/\z(ing)/)
      words << word
    end
  end
  words
end

def words_five_letters_long(text)
  words = []
  text = text.split(" ")
  text.each do |word|
    if word.length == 5
      words << word
    end
  end
  words
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  if text.match(/\A[ABCDEFGHIJKLMNOPQRSTUVWXYZ]/)
    if text[-1].match(/[.]/)
      return true
    end
  end
  false
end

def valid_phone_number?(phone)
  if phone.match(/(?:(?:(\s*\(?([2-9]1[02-9]|[2-9][02-8]1|[2-9][02-8][02-9])\s*)|([2-9]1[02-9]|[2-9][02-8]1|[2-9][02-8][02-9]))\)?\s*(?:[.-]\s*)?)([2-9]1[02-9]|[2-9][02-9]1|[2-9][02-9]{2})\s*(?:[.-]\s*)?([0-9]{4})/)
    return true
  end
  false
end
