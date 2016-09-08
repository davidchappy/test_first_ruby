class Book

	attr_accessor :title

	def initialize(title=nil)
		@title = title
	end

	def title
		exclusions = ["an", "a", "the", "and", "in", "of", ]
    title = @title.capitalize!.split
    title.each do |word|
      unless exclusions.include?(word)
        word.capitalize!
      end
		end
    title.join(" ")
	end

end