require_relative '../main'
RSpec.describe StringCalc do
	describe "#add function" do
		subject(:input_value) { described_class.new }

		it "return error if input is not a string" do
			expect { input_value.add(1) }.to raise_error(ArgumentError, 'Input must be a string')
		end
		
		it "return 0 for empty string" do
			expect(input_value.add('')).to eq(0)
		end

		it "return the same number if has single input" do
			expect(input_value.add('1')).to eq(1)
		end

		it "add number seprate by ','" do
			expect(input_value.add('1, 2, 3')).to eq(6)
		end
	end
end