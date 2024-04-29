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

		it 'handles newlines as delimiters' do
	      expect(input_value.add("1\n2	,3")).to eq(6)
	    end

	    it 'handles newlines as delimiters' do
	      expect(input_value.add("1\n2\n3")).to eq(6)
	    end

	    it 'raises ArgumentError for invalid input with a comma followed by a newline' do
	      expect { input_value.add("1,\n2") }.to raise_error(ArgumentError)
	    end
	end
end