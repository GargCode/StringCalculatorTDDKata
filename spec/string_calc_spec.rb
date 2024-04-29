RSpec.describe StringCalc do
	describe "#add function" do
		subject(:input_value) { described_class.new }
		
		it "return 0 for empty string" do
			expect(calculator.add('')).to eq(0)
		end
	end
end