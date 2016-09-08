class Temperature

	def initialize(options={})
		@fahrenheit = options[:f]
		@celsius = options[:c]
	end

	def self.from_celsius(deg)
		Celsius.new(c: deg)
	end

	def self.from_fahrenheit(deg)
		Fahrenheit.new(f: deg)
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

end

class Celsius < Temperature
  def initialize(deg)
    @celsius = deg
  end
end

class Fahrenheit < Temperature
  def initialize(deg)
    @fahrenheit = deg
  end
end

# temp = Temperature.new(:f => 212)

# puts temp.in_celsius