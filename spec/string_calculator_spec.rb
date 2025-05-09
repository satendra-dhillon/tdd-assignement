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
		end

	end
end