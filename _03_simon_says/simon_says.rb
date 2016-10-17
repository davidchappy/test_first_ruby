#write your code here

def echo(reply)
	reply
end

def shout(reply)
	reply.upcase
end

def repeat(reply, reps=2)
	reply = (reply << " ") * reps
	return reply[0..-2] #remove final space
end

def start_of_word(string, num)
	num -= 1 #account for 0-based index
	string[0..num]
end

def first_word(string)
	word_list = string.split(" ")
	word_list[0]
end

def titleize(string)
	little = ["a", "and", "the", "over"]
	word_list = string.split(" ")
	word_list.each do |word|
		word.capitalize! unless little.include?(word)
	end
	word_list[0].capitalize!			
	word_list.join(" ")
end