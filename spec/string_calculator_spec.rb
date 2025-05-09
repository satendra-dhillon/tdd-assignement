require_relative '../string_calculator'

RSpec.describe StringCalculator do
	let(:string_calculator) { StringCalculator.new }
	
	describe '#add' do

		context 'when input is empty string' do
			it 'return 0 if empty input string' do
      			expect(string_calculator.add("")).to eq(0)
			end
		end

		context 'when input is not empty stirng' do

			it 'return number as integer when single number pased as input string' do
      			expect(string_calculator.add("5")).to eq(5)
			end

			it 'returns sum for non-empty string with comma separated number' do
				expect(string_calculator.add("2,3")).to eq(5)
		    end

		    it 'returns the sum of multiple numbers separated by commas' do
		    	expect(string_calculator.add("1,2,3,4")).to eq(10)
		    end

		    it 'returns the sum of numbers separated by newlines' do
				expect(string_calculator.add("1\n2,3")).to eq(6)
		    end

		    it 'returns sum for non-empty string with comma separated numbers or separated with \n' do
				expect(string_calculator.add("1,2\n3")).to eq(6)
		    end

		    it 'raises an exception when called with a negative number' do
				expect { string_calculator.add("-1,2") }.to raise_error(RuntimeError, "negative numbers not allowed -1")
		    end

		    it 'shows all negative numbers in the exception message' do
				expect { string_calculator.add("-1,2,-3") }.to raise_error(RuntimeError, "negative numbers not allowed -1,-3")
		    end
		end
	end
end