class StringCalculator
	def add(input)
		return 0 if input.empty?
		regex = /[,\n]/

		return input.to_i if !input.match?(regex)

		split_array = input.split(regex)
		integers = split_array.map(&:to_i)

		negatives = integers.select { |n| n < 0 }
	    if negatives.any?
	      raise "negative numbers not allowed #{negatives.join(',')}"
	    end

		return integers.map(&:to_i).sum
	end
end