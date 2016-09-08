def measure(repetitions=1) 
	start_time = Time.now.to_f
  delay = repetitions.times { yield if block_given? }
  end_time = Time.now.to_f
	difference = (end_time - start_time) / repetitions
end
