class EmailsParser

		VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i

	def self.parse_emails(text)

		parse_emails = text.split.select { |word| word =~ VALID_EMAIL_REGEX }
		parse_emails.each do |email|
			Email.create(email: email)
		end
	end
end