module Calculator
	def add(string)
		raise ArgumentError, 'Input must be a string' if !string.is_a?(String)
		return 0 if string.empty?
		numbers = split_string(string)
		numbers.map(&:to_i).sum
	end

	private

	def split_string(string)
		numbers = string.delete(' ')
		numbers&.split(/|,|\n/)
	end
end