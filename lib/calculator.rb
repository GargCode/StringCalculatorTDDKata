module Calculator
	def add(string)
		raise ArgumentError, 'Input must be a string' if !string.is_a?(String)
		return 0 if string.empty?
	end
end