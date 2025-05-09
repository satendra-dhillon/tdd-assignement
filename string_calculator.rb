class StringCalculator
	def add(input)
		return 0 if input.empty?
		return input.to_i if !input.include?(',')

		split_array = input.split(/[,\n]/)
		return split_array.map(&:to_i).sum
	end
end