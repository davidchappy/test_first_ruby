class Timer
  #write your code here

  attr_accessor :seconds

  def initialize(seconds=0)
  	@seconds = seconds
  end

  def padded(num)
  	s = num.to_s
  	return s.length == 1 ? s.insert(0, "0") : s
  end

  def time_string
  	hours = padded(@seconds / 3600)
  	minutes = padded((@seconds % 3600) / 60)
  	seconds = padded((@seconds % 3600) % 60)
  	output = "#{hours}:#{minutes}:#{seconds}"
  end

end

my_timer = Timer.new(4000)

puts my_timer.time_string