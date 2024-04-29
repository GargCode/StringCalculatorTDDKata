require_relative '../main'
RSpec.describe StringCalc do
	describe "#add function" do
		subject(:input_value) { described_class.new }
		
		it "return 0 for empty string" do
			expect(input_value.add('')).to eq(0)
		end
	end
end