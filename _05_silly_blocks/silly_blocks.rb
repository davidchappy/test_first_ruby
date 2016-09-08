def reverser

	input = yield.split
	input.each do |word|
		word.reverse!
	end
	input.join(" ")

end

def adder(addendum=1) 

	yield + addendum

end

def repeater(reps=1) 

	reps.times { yield } 

end