def echo phrase
  phrase
end

def shout phrase
  phrase.upcase
end

def repeat (phrase, times=2)
  phrase = phrase + " "
  phrase = phrase * times
  phrase = phrase[0..-2]
end

def start_of_word phrase,num_letters
  phrase[0..(num_letters-1)]
end

def first_word phrase
  phrase_arr = phrase.split(' ')
  phrase_arr[0]
end

def titleize phrase
  phrase = phrase.downcase
  phrase_arr = phrase.split(' ')

  phrase_arr.each_with_index do |word,i|
    is_little = is_little_word(word)
    if is_little
      if i == 0
        phrase_arr[i] = word.capitalize
      end
    else
      phrase_arr[i] = word.capitalize
    end
  end
  phrase_arr.join(' ')
end

def is_little_word word
  little_words = ["and", "over", "the", "in", "a", "an", "at", "on"]

  little_words.each do |little_word|
    if word == little_word
      return true
    end
  end
  false
end
