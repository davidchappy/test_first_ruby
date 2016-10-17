class Dictionary

	def initialize(entries={})
		@entries = entries
		@keywords = []
	end

	def entries
		@entries = Hash[@entries.sort]
	end

	def keywords
		@keywords.sort_by!{ |k| k.downcase }
	end

	def include?(word)
		@keywords.include?(word)
	end

	def find(word)
		result = {}
		entries.each do |entry|
			p entry
			if entry[0].include?(word)
				key = entry[0]
				value = entry[1]
				result[key] = value
			end	 
		end
		result
	end

	def add(entry)
		if entry.is_a?(Hash)
			keyword = entry.keys.first 
			definition = entry.values.first 
		else 
			keyword = entry
			definition = nil
		end
		keywords << keyword
		entries[keyword] = definition
	end

	def printable
    output = ""
		entries.each_with_index do |entry, index|
      output << "[" << entry[0] << "] "
			output << "\"" << entry[1] << "\""
      unless (index + 1) == entries.size
        output << "\n"
      end
		end
    output
	end

end

d = Dictionary.new
puts d.include?('fish')