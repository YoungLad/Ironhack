# lol this is important

class Check
	def initialize(email, password)
		@email = email
		@password = password
	end

	def pass_length?
		if @password.length > 7
			true
		else
			false
		end
	end

	def alpha_numeral_check?

		if @password =~ /|0-9|/ && @password =~ /[A-Z]/ && @password =~ /[a-z]/ 
			true
		else
			false
		end
	end

	def symbol_check?
		if @password =~ /|\W|/
			true
		else
			false
		end

	end

	def email_check?
		check = @password =~ /@email/
		if check == nil
			true
		else
			false
		end
	end

end