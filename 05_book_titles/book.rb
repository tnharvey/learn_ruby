class Book
  def initialize
    @title = ""
  end

  def title=(phrase)
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
      if word == "i"
        prase_arr[i] = "I"
      end
    end
    @title = phrase_arr.join(' ')
  end

  def is_little_word word
    little_words = ["and", "over", "the", "in", "a", "an", "at", "on", "of"]

    little_words.each do |little_word|
      if word == little_word
        return true
      end
    end
    false
  end
end
