class Check
	def initialize(email, password)
		@email = email
		@password = password
	end

	def pass_length
		if @password.length > 7
			true
		else
			false
		end
	end

end