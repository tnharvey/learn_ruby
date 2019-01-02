#this is just a translation of my javascript version
#which means it could be greatly improved with a fresh start

$rawPhraseArr = []
$punctuation = [",",":",";",".","?","!"]

def translate(rawPhrase)
	piggyPhrase = ""
	#capture which words are capitalized
	wordsCapitalized = capitalizationCapture(rawPhrase.split(' '))
	punctuationCaptured = punctuationCapture(rawPhrase.split(' '))
	rawPhrase = removePunctuation(rawPhrase)

	$rawPhraseArr = rawPhrase.downcase.split(' ')

	$rawPhraseArr.each_with_index do |letter, i|
		wordTranslate(letter, i)
	end

	$rawPhraseArr = repunctuate($rawPhraseArr, punctuationCaptured)
	piggyPhrase = reStringArr($rawPhraseArr,wordsCapitalized," ")

	return piggyPhrase
end

def wordTranslate item, index
	firstV = firstVowel(item)

	if firstV == 0
		item = item + "ay"
	else
		tempChunk = item.slice(0,firstV)
		item = item.slice(firstV,item.length) + item.slice(0,firstV) + "ay"
	end
	$rawPhraseArr[index] = item
end

def isVowel letter
	vowels = ['a','e','i','o','u']

	vowels.each do |vowel|
		if letter == vowel
			return true
		end
	end
	return false;
end

def firstVowel str
	if str.index("qu") == nil
	else
		qu = str.index("qu")
	end

	str.split('').each_with_index do |letter, i|
		if i==0 && isVowel(letter)
			return 0
		end
		if i>0 && isVowel(letter)
			if qu == nil
				return i
			else
				return qu+2
			end
		end
	end
	return "firstVowel error"
end

def reStringArr arr,capArr,filler
	arr.each_with_index do |word,i|
		if capArr[i] == true
			tempWord = word
			tempWord[0] = word[0].upcase
			word = tempWord
		end
	end
	newStr = arr.join(filler)
	return newStr
end

def capitalizationCapture arr
	capped = []
	arr.each_with_index do |word,i|
		if word[0] == word.upcase[0]
			capped[i] = true
		else
			capped[i] = false
		end
	end
	capped
end

def punctuationCapture arr
	punctCap = []

	arr.each_with_index do |word,i|
		$punctuation.each do |character|
			if word.index(character) == nil
				if punctCap[i] == nil
					punctCap[i] = ""
				end
			else
				punctCap[i] = character
			end
		end
	end

	punctCap
end

def removePunctuation phrase
	phrase = phrase.tr(",:;.!?","")
end

def repunctuate phrase, punct
	phrase.each_with_index do |word,i|
		phrase[i] = word + punct[i]
	end
	phrase
end
