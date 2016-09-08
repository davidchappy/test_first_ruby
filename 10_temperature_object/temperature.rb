class Temperature

	def initialize(options={})
		@fahrenheit = options[:f]
		@celsius = options[:c]
	end

	def self.from_celsius(deg)
		Temperature.new(c: deg)
	end

	def self.from_fahrenheit(deg)
		Temperature.new(f: deg)
	end

	def self.ftoc(deg)
		@celsius = ((deg - 32) * 0.5555555556).to_i
	end

	def self.ctof(deg)
		@fahrenheit = ((deg * 1.8) + 32)
	end

	def in_fahrenheit
		unless @celsius.nil? 
			self.class.ctof(@celsius)
		else 
			@fahrenheit
		end
	end

	def in_celsius
		unless @fahrenheit.nil? 
			self.class.ftoc(@fahrenheit)
		else 
			@celsius
		end
	end

	# class Celsius

	# 	def initialize(deg)
	# 	end
	# end

end

# temp = Temperature.new(:f => 212)

# puts temp.in_celsius