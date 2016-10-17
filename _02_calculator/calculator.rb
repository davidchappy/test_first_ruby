#write your code here

def add(addend1, addend2)
	addend1 + addend2
end

def subtract(min, sub)
	min - sub
end

def sum(sum_array)
	sum = 0
	sum_array.each { |addend| sum += addend }
	sum
end

#extra credit

def multiply(factors)
	product = 1
	factors.each { |factor| product *= factor }
	product
end

def power(n1, n2)
	n1 ** n2
end

def factorial(num)
	return 1 if num == 0
	f = 1; for i in 1..num; f *= i; end; f
end