class Book
# write your code here
	attr_reader :title

	def title=(title)
		@title = capitalize_input(title)
	end

	def capitalize_input(title)
		non_cap = ["the", "a", "an", "and", "in", "of"]
		a = title.split(" ")
		a.each do |w|
			unless non_cap.include?(w)
				w.capitalize!
			end
		end
		a[0].capitalize!
		return a.join(" ")
	end
end