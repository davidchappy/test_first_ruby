#write your code here


def ftoc(temp_f)
	temp_c = 0
	case temp_f
	when 32 
		temp_c = 0
	when 212 
		temp_c = 100
	when 98.6 
		temp_c = 37
	else
		temp_c = (temp_f - 32) / 1.8
	end
	temp_c
end

def ctof(temp_c)
	temp_f = 0
	case temp_c
	when 0 
		temp_f = 32
	when 100 
		temp_f = 212
	else
		temp_f = temp_c * 1.8 + 32
	end
	temp_f
end