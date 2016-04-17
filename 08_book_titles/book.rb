class Book
	def title=(title)
		array = title.split(" ")
		array.each_with_index do |string, i|
			if !["the", "a", "an", "and", "in", "of"].any? { |word| string == word} || i == 0
				array[i] = string.capitalize
			end
		end
		@title = array.join(" ")
	end

	def title
		@title
	end
end