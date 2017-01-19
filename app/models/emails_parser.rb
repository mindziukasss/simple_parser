class EmailsParser

		VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i

	def self.parse_emails(text)

		text.split.select { |word| word =~ VALID_EMAIL_REGEX}
		
	end
end