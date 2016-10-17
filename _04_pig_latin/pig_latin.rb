#write your code here

def is_vowel?(l)
	vowels = "aeiou"
	unless vowels.include?(l)
		return false
	else 
		return true
	end
end

def is_upcase?(l)
	return l == l.upcase ? true : false
end

def has_punctuation?(w)
	punctuated = false
	punctuation = ".,;!?"
	w.split("").each do |l|
		if punctuation.include?(l)
			punctuated = true
		end
	end
	punctuated
end

def get_punctuation(w)
	punctuation = ".,;!?"
	w.split("").each do |l|
		if punctuation.include?(l)
			return l
		end
	end
end

def translate(s)
	list = s.split(" ")
	list.each do |word|
		capitalize = false
		i = 0
		if is_upcase?(word[0])
			word[0] = word[0].downcase		
			capitalize = true
		end
		if is_vowel?(word[0])
			word << "ay"
		else  
			word[0..2].split("").each do |l|
				if l == "u" && word[i-1] == "q"
					i += 1
				end
				break if is_vowel?(l) 
				i += 1
			end
			i -= 1
			word << word[0..i] << "ay"
			word.slice!(0..i)
			if has_punctuation?(word)
				p = get_punctuation(word)				
				word.split("").each do |l|
					if l == p
						word[l] = ""
					end 
				end
				word << p
			end 
			word[0] = word[0].upcase if capitalize == true
		end	
	end
	return list.join(" ")
end

translate("away word word")
# "#{word[1..-1]}#{word[0]}"
#write your code here
