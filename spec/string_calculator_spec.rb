require_relative '../string_calculator'

RSpec.describe StringCalculator do
	describe '#add' do

		context 'when input is empty string' do
			it 'return 0 if empty input string' do
				string_calculator = StringCalculator.new
      			expect(string_calculator.add("")).to eq(0)
			end
		end

		context 'when input is not empty stirng' do

			it 'return number as integer when single number pased as input string' do
				string_calculator = StringCalculator.new
      			expect(string_calculator.add("5")).to eq(5)
			end

			it 'returns sum for non-empty string with comma separated number' do
				string_calculator = StringCalculator.new
				expect(string_calculator.add("2,3")).to eq(5)
		    end
		end

	end
end